# Introduction-to-Statistics
Coursework completed during my Intro to Stats Course. 

Languages used include Python and R. I take full credit for all code written.

Data was provided by my course instructors.

## setup - for VSCode

1. Install R
    - Install R 4.2.0 from the official installation website, select the appropriate CRAN mirror for your region 
    - Follow the default installation steps
2. Open CMD
    - navigate to the folder containing "R.exe"
    - assuming you followed the default installation steps, the following code will take you to R.exe:
        - ``` cd\ ```
        - ``` cd Program Files\R\R-4.2.0\bin ```
    - Run R by typing "R"

I chose to use jupyter notebook for most of my work as it easily integrates the results and code in a reader-friendly format,
should you choose not to use it, you may stop here. 

3. Install languageserver
    - execute ``` install.packages("languageserver") ```
4. Install IRkernel - (MAKE SURE YOU HAVE JUPYTER INSTALLED)
    - execute ``` install.packages("IRkernel") ```
    - execute ``` IRkernel::installspec() ```