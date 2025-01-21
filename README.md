# sanv: Simply a Node.js Versioner

```sanv``` is a version manager for Node.js, created for the fun and educational experience of developing my own tool to simplify the process of installing, using, and managing multiple versions of Node.js (Like NVM).

<br />

![sanv-usage](https://github.com/user-attachments/assets/a84ef32c-1477-4ae0-991f-b71d81bd8bbd)

<br/>

## Features 
- Install, switch, list, search, and remove versions of Node.js.
  
<br/>

## Prerequisites 
- Linux
- git
- curl
- fzf (Because I love it and its incredible)

<br/>

## Installation 

Run the following command in your terminal to download and set up ```sanv```: 
```bash 
git clone https://github.com/itllsv/sanv.git ~/.sanv && ~/.sanv/install.sh
``` 

<br/>

## Usage 
### Each command follows the structure:
(Note: The ```version``` command is an exception to this structure and does not use fzf.)
```bash 
sanv command [initial-input-for-fzf (optional)]
```

<br/>

### Commands:
```install```: List available versions with fzf and install the selected version.

```use```: List installed versions with fzf and switch to the selected version.

```remove```: List installed versions with fzf and remove the selected version.

```version```: Print the current version of Node.js.(This command does not use fzf and simply outputs the version directly.)

<br/>

### Examples
```bash
sanv install 22.13
sanv install v23
sanv install latest
sanv install lat
sanv install
...

sanv use 22.13.0
...

sanv remove v2
...

sanv version
```

<br/>

## TODO
| Task               | Status  |
|--------------------|---------|
| Implement for Mac  | Pending |
| Support for .nvmrc | Pending |

<br/>

### Contribution We welcome contributions! Please fork the repository, make your changes, and submit a pull request. 
