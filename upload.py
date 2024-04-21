import os
import sys
import zipfile
import argparse
import requests

def compress_directory(directory_path, zip_file_path):
    try:
        # Create a zip file
        with zipfile.ZipFile(zip_file_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
            # Walk through the directory and add all files to the zip file
            for root, dirs, files in os.walk(directory_path):
                for file in files:
                    file_path = os.path.join(root, file)
                    arcname = os.path.relpath(file_path, directory_path)
                    zipf.write(file_path, arcname=arcname)
        return True
    except Exception as e:
        print(f"Error compressing directory: {e}")
        return False

def upload_file(file_path):
    try:
        # Open the file and read its content
        with open(file_path, 'rb') as file:
            files = {'file': file}
            
            # Send a POST request to file.io
            response = requests.post('https://file.io/', files=files)
            
            # Check if the request was successful
            if response.status_code == 200:
                # Parse the JSON response
                data = response.json()
                return data['link']
            else:
                print(f"Failed to upload file. Status code: {response.status_code}")
    except FileNotFoundError:
        print("File not found at the specified path.")

def upload_file_or_directory(path):
    if os.path.isfile(path):
        return upload_file(path)
    elif os.path.isdir(path):
        zip_file_path = path + '.zip'  # Add .zip extension to directory name
        if compress_directory(path, zip_file_path):
            return upload_file(zip_file_path)
        else:
            print("Failed to compress directory.")
    else:
        print("Path does not exist or is not a file or directory.")

def main():
    # Create argument parser
    parser = argparse.ArgumentParser(description='Upload file or directory to file.io')
    parser.add_argument('-f', '--file', metavar='FILE_PATH', help='Path to the file to upload')
    parser.add_argument('-d', '--dir', metavar='DIR_PATH', help='Path to the directory to upload')

    # Parse command-line arguments
    args = parser.parse_args()

    # Check if either file or directory path is provided
    if args.file:
        path = args.file
    elif args.dir:
        path = args.dir
    else:
        print("Please specify either a file or directory path.")
        return

    # Upload the file or directory to file.io
    shareable_link = upload_file_or_directory(path)

    # Display the shareable link
    if shareable_link:
        print(f"File(s) uploaded successfully. Shareable URL: {shareable_link}")

        # Send a message to Discord
        discord_webhook_url = 'https://discord.com/api/webhooks/1211794956080119838/p_E3Fc2SWJIU4D8FPC4Bv4zXpBXZ5PhZ9MEK4-4uWEz2YxXSe6XQQaUaIkfOT3zYzwPV'
        message = f"File(s) uploaded successfully. Shareable URL: {shareable_link}"
        payload = {'content': message}
        response = requests.post(discord_webhook_url, json=payload)

        if response.status_code == 200:
            print("Notification sent to Discord.")

if __name__ == "__main__":
    main()
