**Assignment B4 Read Me**

Exercises 1 and 2 are chosen for the assignment B4

Fo exercise 1, after removing the stop words (is", "a", "for", "in"), I counted the word occurence and plotted the top 20 most frequent words as a bar graph. [https://medium.com/\@esegui/stop-word-removal-in-r-9f46c4eef710](https://medium.com/@esegui/stop-word-removal-in-r-9f46c4eef710){.uri} was used as a reference for the instruction.

For exercise, a function rearrange_f is created to arrange the word orders when provided a specific character, it will rearrange the word based on the following rule:

-   If words begin with a vowel (aeiou), move the initial vowel letter to the end and then add "et" near the end of the word

-   If the words begin with "Ch" or "Cr", then move both letters to the end of the word and add "et" in the end

-   If the words begin with a consonant and the consonant is not Ch or Cr, move the last letter from the end to the beginning and then add "et" near the end of the word.
