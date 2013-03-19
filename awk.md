# Using Awk

#### Hello Awk

Awk is a unix tool designed for processing text files. It was created at Bell labs in the 1970s by Alfred Aho, Peter Weinberger and Brian Kerninghan. 

Awk has a special scripting language which is based on data and regular expressions. With awk, you describe how your input lines are formatted, and what to do with the data, and awk parses your input on a line-by-line basis, running your code to produce the manipulated result.

Here's how Aho described Awk (from [Wikipedia](http://en.wikipedia.org/wiki/AWK))):

> "AWK is a language for processing text files. A file is treated as a >
>  sequence of records, and by default each line is a record. Each line 
>  is broken up into a sequence of fields, so we can think of the first 
>  word in a line as the first field, the second word as the second 
>  field, and so on. An AWK program is of a sequence of pattern-action 
>  statements. AWK reads the input a line at a time. A line is scanned 
>  for each pattern in the program, and for each pattern that matches, 
>  the associated action is executed." - Alfred V. Aho

Awk has two modes of operations. We can use it as a command line tool running oneliners (everything is written in the command line), or we can write full programs and let Awk run these programs.

A oneliner is just a small program that does a very simple task. Although writing oneliners is fun, writing Awk programs allows you to reuse the same logic for multiple input files.

Awk splits every input line into fields, so inside the Awk program you can use $1 for the first field, $2 for the second field and so on. By default, it uses spaces and tabs for splitting, but you can choose any field separator you need.

In this document I'll demonstrate several awk programs. Lines starting with a $ sign can be typed in as-is into the command line (without the $ sign), and other lines are awk programs.

#### Awk Programs

An Awk program is basically a set of line patterns and commands. Each line pattern is a boolean condition, if it evaluates to true on a line, the command is executed for that line.

For example, consider the following Awk progam:

```
/.*/ { print "> ",$0," <" }
```

The first part is called the pattern. In this example, it's a regular expression that matches everything. In english, the line says: "for every input line do".  
The second part is called a command, and written in curly braces. The `print` command prints out all its arguments. Note the special variable `$0` - it means "the entire input line".

You can run an awk program either by writing it in a file and using `awk -f`, or directly from the command line:

```
$ awk -f myfile.awk
$ awk '// { print ">",$0,"<" }'

```


#### Awk Patterns
Awk supports both regular expression patterns and relational patterns. Let's start with regular expression patterns. By default, if no pattern is specified, or if the regular expression is empty, awk runs the command for every input line.  
You can use any egrep style REs to select lines to work on. For example, you could use the following awk to print only lines starting with a d:

```
/^d/ { print $0 }
```

A relational pattern is a boolean condition on variables. You can check if a line has more than X fields, if it has more than Y characters, or any other condition.

Here are some more demos for using Awk patterns

Print only lines with more than 5 characters

```
length($0)>5 { print $0}
```

Print lines 1-10 (NR is the number of lines read so far)

```
NR<11 { print $0}
```

Print lines 11 and beyond

```
NR>=11 { print $0 }
```

Print lines with more than 5 words (fields)

```
$ awk 'NF > 5 { print $0 }'
```

Combined with pipelines, awk can help you do easy tasks easily. Here's how you print information ONLY on files smaller than 100 bytes (remember awk splits your input to fields, and $N marks field number N):

```
$ ls -lb | awk ' $5 < 100 { print $0 }'
```

Two special patterns: BEGIN and END allow running code before the first input line or after the last input line. This is useful if you want to do commulative calculations.

For example, this awk prints out the total number of characters in a text file:

```
$ awk '{CHARS += length($0)} END { print CHARS }' file.pl
```

And one prints out the total number of lines:

```
$ awk 'END { print NR }'
```

Combined with ls, we can calculate the total size of all files in current folder:

```
ls -lb | awk '/^-/ {SIZE += $5} END { print SIZE }'
```


#### Awk Commands

Other than printing, there's a whole range of cool stuff awk can do for you. The full list of commands is available in the [man page](http://linux.die.net/man/1/awk). For this section, I'll use several demonstrations to get to know the important ones. 

We already met print, so you'll be happy to know awk also has printf. This oneliner pretty-prints connected users:

```
who | awk '{printf "User name: % 10s\n", $1}'
```

Awk also has the sub and gsub functions to replace text inline. If you wanted to replace all occurences of `dog` to `cat`, you can use the following awk:

```
awk '{gsub("dog","cat"); print $0}'
```

Here, after substitution was performed we print the result using `print $0`. You can run as many commands as you need inside the curlies, but separate them with semi-colon.


#### Builtin Variables

The following built-in variables have special meaning in awk programs:

<table class="table">
<tr>
<th>Variable Name</th>
<th>Meaning</th>
</tr>
<tr>
<td>NR</td>
<td>Number of records (lines) read</td>
</tr>

<tr>
<td>NF</td>
<td>Number of fields (words) in the current line</td>
</tr>

<tr>
<td>FS</td>
<td>Input Field Seperator</td>
</tr>

<tr>
<td>RS</td>
<td>Input Record Seperator (defaults to newline)</td>
</tr>


<tr>
<td>OFS</td>
<td>Output Field Seperator (used in print)</td>
</tr>

<tr>
<td>ORS</td>
<td>Output Row Seperator (defaults to newline)</td>
</tr>

</table>

Use or assign to these variables to interact with Awk behavior. For example, to use a different Input field separator, assign to FS. This one prints out only the user names from `/etc/passwd`:

```
awk 'BEGIN { FS=":" } { print $1 }' /etc/passwd
```

Awk is the swiss army knife of UNIX tools. Do take the time to master it. It'll be worth it.