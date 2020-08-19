# Operating Systems Project 1
## About the project
`dirgraph` is the shell utility which scans choosen directory and returns a report in format:
```
Root directory: path/to/directory
Directories: 3                      // number of directories inside
All files: 25                       // number of all files in all directories
File size histogram:
  <100 B  : ######                  // count of the hashes cooresponds with count of the files with specified file size
  <1 KiB  : ###
  <10 KiB : ########
  <100 KiB: ###########
  <1 MiB  : ####
  <10 MiB : #
  <100 MiB: #########
  <1 GiB  : ##
  >=1 GiB : ######
  ```
## Usage
Options:  
`-n`      Normalize historgram size  
`-i ERE`  Count only files that match specified Extended Regular Expression
```sh
$ ./dirgraph -n -i regexp /Users/John/Documents
```
