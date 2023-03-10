# pdf-revise-bulk-blacken

Docker image that wraps
[renber/pdf-revise](https://github.com/renber/pdf-revise).

Given a string of text, this image can be used to erase the string from all PDF
files in a directory, replacing each such string with a black box.

## Usage

Run the following command to blacken the string `<STRING_TO_BLACKEN>` in each
PDF file in the current directory:

```bash
$ docker run -u=$UID:$UID -v $(pwd):/data sebelino/pdf-revise-bulk-blacken:latest "<STRING_TO_BLACKEN>"
```

The processed PDF files will have the file extension `*.out.pdf`.

**Note**: If there are already any files whose filename ends with `.out.pdf` in
the current directory, those will be removed.

## Example

```bash
$ mkdir pdfs/ && cd pdfs/
$ wget https://www.africau.edu/images/default/sample.pdf
$ wget https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf
$ docker run -u=$UID:$UID -v $(pwd):/data sebelino/pdf-revise-bulk-blacken:latest "file"
```

![sample.out.pdf](https://user-images.githubusercontent.com/837775/222696475-ecdf684b-8704-4f9f-aa7c-8f2ff280dab1.png)
![dummy.out.pdf](https://user-images.githubusercontent.com/837775/222696530-bbce01ee-8073-4945-91e6-eb09eba5f642.png)
