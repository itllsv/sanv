# sanv: Simply a Node.js Versioner

```sanv``` is a version manager for Node.js, created for the fun and educational experience of developing my own tool to simplify the process of installing, using, and managing multiple versions of Node.js (Like NVM).



### Features 
- Install, switch, list, search, and remove versions of Node.js.



## Installation 
#### Prerequisites 
- Linux
- git
- curl
- fzf (Because I love it and its incredible)



Run the following command in your terminal to download and set up ```sanv```: 
```bash 
git clone https://github.com/itllsv/sanv.git ~/.sanv && ~/.sanv/install.sh
``` 



## Usage 
#### Each command follows the structure:
```bash 
sanv command [initial-input-for-fzf (optional)]
```
(Note: The ```version``` command is an exception to this structure and does not use fzf.)



Commands:
```install```: Install a specific version of Node.js.

```use```: Switch to a specific version of Node.js.

```list```: List all installed versions of Node.js.

```remove```: Remove a specific version of Node.js.

```search```: Search for available Node.js versions.

```version```: Print the current version of Node.js.(This command does not use fzf and simply outputs the version directly.)



#### Examples
```bash
sanv install 22.13
sanv install v23
sanv install latest
sanv install lat
sanv install
...

sanv use 22.13.0
...

sanv list 
...

sanv remove v2
...

sanv search latest
...

sanv version
```



#### Contribution We welcome contributions! Please fork the repository, make your changes, and submit a pull request. 
