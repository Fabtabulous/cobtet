#AcuCobol Tetris


You won't actually be able to get this to compile, sorry. Had to cut out some proprietary bits since I used an existing program as a template.   
This is all the relevant code to the application though.  
I'm not pretending this is a good implementation of Tetris. I'd do pretty much every single thing differently the next time around. There's too many garbage helper
variables everywhere and I made the piece arrays as big as the whole playing field because I wanted it to carry location information. In the end I realized
I needed to keep track of a pivot anyhow to enable rotation so that approach ended up being incredibly wrong and costly.  
This was a three day exercise, and all in all I'm pretty happy with it.

[Image]([fabtabulous.github.com/cobtet/img/cobtet.png](https://github.com/Fabtabulous/cobtet/blob/main/img/cobtet.png))
