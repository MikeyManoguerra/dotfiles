# https://stackoverflow.com/questions/36843995/get-my-current-path-using-a-python-script-as-a-command/36843996
import os, sys

print("CWD: " + os.getcwd())
print("Script: " + sys.argv[0])

try:
    assert ".git" in os.listdir()

except AssertionError:
    print(
        "\nthis version only supports its use from the root directory of the project\n"
    )
    sys.exit()

try:
    file_name = sys.argv[1]

except IndexError:
    print("you did not add a file name!")
    sys.exit()

open(f"src/views/components/{file_name}.twig", "w+")
open(f"src/styles/components/_{file_name}.scss", "w+")


with open("src/styles/main.scss", "a") as myfile:
    myfile.write(f'\n@import "{file_name}.scss";')
