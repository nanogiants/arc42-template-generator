# arc42 Template Generator
<!-- section: Introduction -->
<!-- Describe briefly what your software is. What problem does it solve? At what target audience is it aimed? -->

## Overview
<!-- section: Overview -->
<!-- Give an architectural overview of your software. Is is interesting for other developers, who wants to catch on and want to developer features or fix bugs of your software. Do not go into too much detail. There are other documents for this. -->
This script automates the process of creating an arc42 template that can be used for importing into Confluence. The arc42 template is a standard template for software architecture documentation and provides a consistent structure for documenting the architecture of a software system. This script creates a template that includes all the necessary boilerplate to get started.

## How to use
- Make script executable by running the following command: `chmod +x create.sh`
- Run the script by using the command `./create.sh`
- When prompted, provide the name of the project.

The script will create an output directory with the timestamp and the given project name. The script will replace all occurrences of the string `HAFWUEARC42` with the uppercase version of the project name and `hafwuearc42` with the lowercase version of the project name in the files entities.xml and exportDescriptor.properties. The script will copy the directory named `./template/attachments` recursively to the output directory. The script will create a zip file with the name `$input-$now.zip` in the current directory.

### Note
- The script assumes that the `template` directory, containing the necessary files and directories, is located in the same directory as the script.
- The script will overwrite files with the same name in the output directory if they already exist.
- The script is tested on macOS, on other systems, the script may need adjustments.

## Contributing
<!-- section: Contributing -->
<!-- Describe what action one should take in order to contribute. Does a certain styleguide has to be adhered. How can one apply changes (i.e. push vs. pull request)? -->
Bug reports and pull requests are welcome on GitHub at https://github.com/nanogiants/arc42-template-generator/issues. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License
<!-- section: License -->
<!-- Describe the license under which your software is published. Note that an unlicensed piece of software is most likely never used. So do not skip tihs part! -->
```
MIT License Copyright (c) 2023 NanoGiants

Permission is hereby granted, free
of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice
(including the next paragraph) shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF
ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```