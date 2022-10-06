## Regular expressions
### Task 1
Try to use regular expressions.
1. Create a list of names:
    ```R
    names_list <-  c("anna", "jana", "kamil", "norbert", "pavel", "petr", "stanislav", "zuzana")
    ```
2. Search for name `jana`:
    ```R
    grep("jana", names_list, perl=TRUE)
    ```
3. Search for all names containing letter `n` at least once:
    ```R
    grep("n+", names_list, perl=TRUE)
    ```
4. Search for all names containing letters `nn`:
    ```R
    grep("n{2}", names_list, perl=TRUE)
    ```
5. Search for all names starting with `n`:
    ```R
   grep("^n", names_list, perl=TRUE)
    ```
6. Search for names `Anna` or `Jana`:
    ```R
   grep("Anna|Jana", names_list, perl=TRUE)
    ```
7. Search for names starting with `z` and ending with `a`:
    ```R
    grep("^z.*a$", names_list, perl=TRUE)
    ```

### Task 2
* Load an amplicon sequencing run from 454 Junior machine `fishes.fna`.
* Get a sequence of a sample (avoid if conditions), that is tagged by forward and reverse MID `ACGAGTGCGT`. 
* How many sequences are there in the sample?

### Task 3
Create a function for demultiplexing of sequencing data.
Sequencing data are in file `fishes.fna.gz` and MID sequences in `fishes_MIDs.xls`.

**Inputs:**
* path to fasta file,
* a list of forward MIDs,
* a list of reverse MIDs,
* a list of samples‘ names.

**Outputs:**
* fasta files that are named after the samples and contain sequences of the sample without MIDs (perform MID trimming)
* table named `report.txt` containing samples‘ names and their number of sequences


### Download files from GitHub
<details>
<summary>Git settings</summary>

> * Configure the Git editor
> ```bash
> git config --global core.editor notepad
> ```
> * Configure your name and email address
> ```bash
> git config --global user.name "Zuzana Nova"
> git config --global user.email z.nova@vut.cz
> ```
> * Check current settings
> ```bash
> git config --global --list
> ```
>
</details>

* Create a for on your GitHub account. 
  On the GitHub page of this repository find a <kbd>Fork</kbd> button in the upper right corner.
  
* Cloned forked repository from your GitHub page to a folder in your computer:
```bash
git clone <fork repository address>
```
* In a local repository, set new remote for project repository:
```bash
git remote add upstream https://github.com/mpa-prg/exercise_2.git
```

### Send files to GitHub
Create a new commit and send new changes to your remote repository.
* Add file to a new commit.
```bash
git add <file_name>
```
* Create commit, enter commit message, save the file and close it.
```bash
git commit
```
* Send new commit to your GitHub repository.
```bash
git push origin master
```
