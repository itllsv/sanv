# sanv: Simply a Node.js Versioner

```sanv``` is a version manager for Node.js, created for the fun and educational experience of developing my own tool to simplify the process of installing, using, and managing multiple versions of Node.js (Like NVM).

<br/><br/><br/>

## Features 
- Install, switch, list, search, and remove versions of Node.js.

<br/><br/><br/>

## Prerequisites 
- Linux
- git
- curl
- fzf (Because I love it and its incredible)

<br/><br/><br/>

## Installation 

Run the following command in your terminal to download and set up ```sanv```: 
```bash 
git clone https://github.com/itllsv/sanv.git ~/.sanv && ~/.sanv/install.sh
``` 

<br/><br/><br/>

## Usage 
#### Each command follows the structure:
(Note: The ```version``` command is an exception to this structure and does not use fzf.)
```bash 
sanv command [initial-input-for-fzf (optional)]
```

<br/><br/><br/>

#### Commands:
```install```: Install a specific version of Node.js.

```use```: Switch to a specific version of Node.js.

```list```: List all installed versions of Node.js.

```remove```: Remove a specific version of Node.js.

```search```: Search for available Node.js versions.

```version```: Print the current version of Node.js.(This command does not use fzf and simply outputs the version directly.)

<br/><br/><br/>

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

<br/><br/><br/>

## TODO
| Task               | Status  |
|--------------------|---------|
| Implement for Mac  | Pending |
| Support for .nvmrc | Pending |


#### Contribution We welcome contributions! Please fork the repository, make your changes, and submit a pull request. 
