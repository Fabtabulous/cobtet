Working-Storage Section.

*-----------------------------------------------------------------
*       Tetris Variablen
*-----------------------------------------------------------------
01      ws-tetris-thread    pic 9(1) value 0.
    88  tetris-running      value 1.
    88  tetris-stopped      value 0.

01      ws-tetris-thread-handle usage handle of thread.
01      ws-tetris-music-thread-handle usage handle of thread.


01      WS-ROTATION        PIC 9(1) value 0.

01      WS-OFFSET-TETRIS.
        05 WS-OFFSET-TETRIS-X     PIC 9(1) value 0.
        05 WS-OFFSET-TETRIS-Y     PIC 9(1) value 0.

01      WS-PIVOT.
        05 WS-PIVOT-X      PIC 9(2) value 0.
        05 WS-PIVOT-Y      PIC 9(2) value 0.

01      WS-NEW-PIVOT.
        05 WS-NEW-PIVOT-X   PIC 9(2) value 0.
        05 WS-NEW-PIVOT-Y   PIC 9(2) value 0.

01      WS-I-PIVOT.
        05 WS-I-PIVOT-X      PIC 9(2)    value 0.
        05 WS-I-PIVOT-Y      PIC 9(2)    value 0.

01      WS-S-PIVOT.
        05 WS-S-PIVOT-X      PIC 9(2)    value 0.
        05 WS-S-PIVOT-Y      PIC 9(2)    value 0.

01      WS-RS-PIVOT.
        05 WS-RS-PIVOT-X     PIC 9(2)    value 0.
        05 WS-RS-PIVOT-Y     PIC 9(2)     value 0.

01      WS-L-PIVOT.
        05 WS-L-PIVOT-X      PIC 9(2)    value 0.
        05 WS-L-PIVOT-Y      PIC 9(2)    value 0.

01      WS-RL-PIVOT.
        05 WS-RL-PIVOT-X     PIC 9(2)    value 0.
        05 WS-RL-PIVOT-Y     PIC 9(2)     value 0.

01      WS-T-PIVOT.
        05 WS-T-PIVOT-X      PIC 9(2)    value 0.
        05 WS-T-PIVOT-Y      PIC 9(2)    value 0.

01      WS-SQUARE-PIVOT.
        05 WS-SQUARE-PIVOT-X    PIC 9(2)      value 0.
        05 WS-SQUARE-PIVOT-Y    PIC 9(2)      value 0.



01 Tetris-Sound             pic X(30) value "S:\VEMAG\dv\bm\tetris.wav".
01 SOUND-FLAGS              pic 9(2) value 1.
01 SOUND-STATUS             pic 9(1) value 1.

01 Tetris-Sound-Lineclear             pic X(30) value "S:\VEMAG\dv\bm\line.wav".
01 SOUND-FLAGS2              pic 9(2) value 1.
01 SOUND-STATUS2             pic 9(1) value 1.

01 Tetris-Sound-fall             pic X(30) value "S:\VEMAG\dv\bm\fall.wav".
01 SOUND-FLAGS3              pic 9(2) value 1.
01 SOUND-STATUS3             pic 9(1) value 1.

01      ws-high-score                   pic 9(10) value 0000000000.

01      WS-SQUARES-IN-LINE        pic 9(2) value zeroes.
01      WS-LINES-FILLED          pic 9(1) value 0.
01      WS-LINES-TOTAL           pic 9(4) value 0.

01 WS-TETRIS-FIELD.
      05 WS-TETX OCCURS 10 TIMES.
         10 WS-TETY OCCURS 17 TIMES.
            15 WS-TETSQUARE PIC 9 VALUE 1.

01 WS-STATIC-FIELD.
      05 WS-STATIC-X OCCURS 10 TIMES.
         10 WS-STATIC-Y OCCURS 17 TIMES.
            15 WS-STATIC-TETSQUARE PIC 9 VALUE 1.

01      WS-START-TIME   Pic 9(8).
01      WS-END-TIME     Pic 9(8).
01      WS-TIME-DELTA   PIC 9(8).

01 WS-FALLING-PIECE.
        05 WS-FALLING-X OCCURS 10 TIMES.
            10 WS-FALLING-Y OCCURS 17 TIMES.
                15 WS-FALLING-PIECESQUARE PIC 9 VALUE 1.

01 WS-FALLING-PIECE-OOB.
        05 WS-FALLING-X-OOB OCCURS 16 TIMES.
            10 WS-FALLING-Y-OOB OCCURS 23 TIMES.
                15 WS-FALLING-PIECESQUARE-OOB PIC 9 VALUE 1.

01 WS-NEW-FALLING-PIECE.
        05 WS-NEW-FALLING-X OCCURS 10 TIMES.
            10 WS-NEW-FALLING-Y OCCURS 17 TIMES.
                15 WS-NEW-FALLING-PIECESQUARE PIC 9 VALUE 1.

01 WS-NEW-FALLING-PIECE-OOB.
        05 WS-NEW-FALLING-X-OOB OCCURS 16 TIMES.
            10 WS-NEW-FALLING-Y-OOB OCCURS 23 TIMES.
                15 WS-NEW-FALLING-PIECESQUARE-OOB PIC 9 VALUE 1.


01 WS-NEW-FALLING-PIECE-OOB-EMPTY.
        05 WS-NEW-FALLING-X-OOB-EMPTY OCCURS 16 TIMES.
            10 WS-NEW-FALLING-Y-OOB-EMPTY OCCURS 23 TIMES.
                15 WS-NEW-FALLING-PIECESQUARE-OOB-EMPTY PIC 9 VALUE 1.

01 WS-EMPTY-BOARD.
        05 WS-EMPTY-X OCCURS 10 TIMES.
           10 WS-EMPTY-Y OCCURS 17 TIMES.
                15 WS-EMPTY-PIECESQUARE PIC 9 VALUE 1.

01 WS-SQUARE-BLOCK.
        05 WS-TSQUARE-X OCCURS 10 TIMES.
            10 WS-TSQUARE-Y OCCURS 17 TIMES.
                15 WS-TSQUAREBLOCK PIC 9 VALUE 1.
01 WS-SQUARE-BLOCK-PREVIEW-DATA.
        05 WS-TSQUARE-X OCCURS 4 TIMES.
            10 WS-TSQUARE-Y OCCURS 4 TIMES.
                15 WS-SQUARE-PREVIEW PIC 9 VALUE 1.

01 WS-L-BLOCK.
        05 WS-TL-X OCCURS 10 TIMES.
            10 WS-TL-Y OCCURS 17 TIMES.
                15 WS-T-L-BLOCK PIC 9 VALUE 1.
01 WS-L-BLOCK-PREVIEW-DATA.
        05 WS-TLP-X OCCURS 4 TIMES.
            10 WS-TLP-Y OCCURS 4 TIMES.
                15 WS-L-PREVIEW PIC 9 VALUE 1.

01 WS-REVERSE-L-BLOCK.
        05 WS-TREVERSEL-X OCCURS 10 TIMES.
            10 WS-TREVERSEL-Y OCCURS 17 TIMES.
                15 WS-T-REVERSE-L-BLOCK PIC 9 VALUE 1.
01 WS-REVERSE-L-BLOCK-PREVIEW-DATA.
        05 WS-TREVERSEL-X OCCURS 4 TIMES.
            10 WS-TREVERSEL-Y OCCURS 4 TIMES.
                15 WS-REVERSE-L-PREVIEW PIC 9 VALUE 1.

01 WS-S-BLOCK.
        05 WS-TS-X OCCURS 10 TIMES.
            10 WS-TS-Y OCCURS 17 TIMES.
                15 WS-T-S-BLOCK PIC 9 VALUE 1.
01 WS-S-BLOCK-PREVIEW-DATA.
        05 WS-TSP-X OCCURS 10 TIMES.
            10 WS-TSP-Y OCCURS 4 TIMES.
                15 WS-S-PREVIEW PIC 9 VALUE 1.

01 WS-REVERSE-S-BLOCK.
        05 WS-TREVERSES-X OCCURS 10 TIMES.
            10 WS-TREVERSES-Y OCCURS 17 TIMES.
                15 WS-T-REVERSE-S-BLOCK PIC 9 VALUE 1.
01 WS-REVERSE-S-BLOCK-PREVIEW-DATA.
        05 WS-TREVERSESP-X OCCURS 4 TIMES.
            10 WS-TREVERSESP-Y OCCURS 4 TIMES.
                15 WS-REVERSE-S-PREVIEW PIC 9 VALUE 1.

01 WS-I-PIECE.
        05 WS-TIPIECE-X OCCURS 10 TIMES.
            10 WS-TIPIECE-Y OCCURS 17 TIMES.
                15 WS-T-I-PIECE PIC 9 VALUE 1.
01 WS-I-PIECE-PREVIEW-DATA.
        05 WS-TIPIECEP-X OCCURS 4 TIMES.
            10 WS-TIPIECEP-Y OCCURS 4 TIMES.
                15 WS-I-PREVIEW PIC 9 VALUE 1.

01 WS-TRIANGLE-BLOCK.
        05 WS-TRIANGLE-X OCCURS 10 TIMES.
            10 WS-TTRIANGLE-Y OCCURS 17 TIMES.
                15 WS-T-TRIANGLE-BLOCK PIC 9 VALUE 1.
01 WS-TRIANGLE-BLOCK-PREVIEW-DATA.
        05 WS-TRIANGLEP-X OCCURS 4 TIMES.
            10 WS-TTRIANGLEP-Y OCCURS 4 TIMES.
                15 WS-TRIANGLE-PREVIEW PIC 9 VALUE 1.

01 WS-PREVIEW-WINDOW-DATA.
        05 WS-PREVIEW-X OCCURS 4 TIMES.
            10 WS-PREVIEW-Y OCCURS 4 TIMES.
                15 WS-PREVIEW-WINDOW PIC 9 VALUE 1.

01 WS-NEXT-BLOCK PIC 9(1).

   88 NEXT-I-PIECE value 1.
   88 NEXT-TRIANGLE-BLOCK value 2.
   88 NEXT-S-BLOCK value 3.
   88 NEXT-REVERSE-S-BLOCK value 4.
   88 NEXT-L-BLOCK value 5.
   88 NEXT-REVERSE-L-BLOCK value 6.
   88 NEXT-SQUARE-BLOCK value 7.

01 WS-CURRENT-BLOCK PIC 9(1).

   88 CURRENT-I-PIECE value 1.
   88 CURRENT-TRIANGLE-BLOCK value 2.
   88 CURRENT-S-BLOCK value 3.
   88 CURRENT-REVERSE-S-BLOCK value 4.
   88 CURRENT-L-BLOCK value 5.
   88 CURRENT-REVERSE-L-BLOCK value 6.
   88 CURRENT-SQUARE-BLOCK value 7.


01      WS-BRICK-FALLING PIC 9(1) VALUE 0.
    88  BRICK-IS-FALLING VALUE 1.
    88  BRICK-IS-NOT-FALLING VALUE 0.

01      WS-X-ITERATOR PIC 9(2) VALUE 0.
01      WS-TEMP-X-IT  PIC 9(2) VALUE 0.
01      WS-Y-ITERATOR PIC 9(2) VALUE 0.
01      WS-TEMP-Y-IT  PIC 9(2) VALUE 0.
01      WS-NEW-X-ITERATOR PIC 9(2) VALUE 0.
01      WS-NEW-Y-ITERATOR PIC 9(2) VALUE 0.

01      WS-BLOCKEDORNOT PIC 9(1) VALUE 0.
        88 BLOCKED      value 1.
        88 NOT-BLOCKED  value 0.

01      WS-EDGEORNOT    PIC 9(1) VALUE 0.
        88 ATEDGE       value 1.
        88 NOTATEDGE    value 0.


*-----------------------------------------------------------------
*	Detail
*-----------------------------------------------------------------

01      ed-tetris.

        05 tetris-screen0101    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,1)
                        SIZE                32 pixels
                        line                5
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0201    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0301    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0401    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0501    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0601    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0701    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0801    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0901    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1001    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,1)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0102    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,2)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0202    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0302    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0402    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0502    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0602    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0702    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0802    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0902    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1002    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,2)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0103    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,3)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0203    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0303    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0403    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0503    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0603    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0703    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0803    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0903    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1003    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,3)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0104    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,4)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0202    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0304    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0404    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0504    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0604    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0704    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0804    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0904    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1004    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,4)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0105    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,5)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0205    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0305    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0405    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0505    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0605    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0705    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0805    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0905    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1005    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,5)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0106    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,6)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0206    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0306    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0406    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0506    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0606    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0706    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0806    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0906    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1006    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,6)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0107    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,7)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0207    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0307    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0407    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0507    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0607    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0707    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0807    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0907    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1007    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,7)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0108  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,8)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0208  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0308  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0408  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0508  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0608  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0708  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0808  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0908  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1008  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,8)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0109  bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,9)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0209   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0309   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0409   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0509   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0609   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0709   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0809   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0909   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1009   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,9)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0110   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,10)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0210   bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0310    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0410    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0510    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0610    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0710    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0810    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0910    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1010    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,10)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0111    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,11)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0211    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0311    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0411    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0511    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0611    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0711    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0811    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0911    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1011    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,11)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0112    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,12)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0212    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0312    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0412    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0512    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0612    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0712    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0812    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0912    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1012    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,12)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0113    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,13)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0213    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0313    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0413    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0513    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0613    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0713    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0813    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0913    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1013    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,13)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0114    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,14)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0214    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0314    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0414    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0514    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0614    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0714    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0814    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0914    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1014    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,14)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0115    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,15)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0215    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0315    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0415    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0515    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0615    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0715    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0815    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0915    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1015    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,15)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0116    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,16)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0216    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0316    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0416    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0516    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0616    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0716    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0816    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0916    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1016    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,16)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0117    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(1,17)
                        SIZE                32 pixels
                        line                + 1.78
                        column              25
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-screen0217    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(2,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0317    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(3,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0417    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(4,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0517    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(5,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0617    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(6,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0717    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(7,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0817    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(8,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen0917    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(9,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-screen1017    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-TETSQUARE(10,17)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-preview0101    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(01,01)
                        line                10
                        column              10
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-preview0201    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(02,01)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0301    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(03,01)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0401    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(04,01)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-preview0102    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(01,02)
                        line                + 1.78
                        column              10
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-preview0202    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(02,02)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0302    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(03,02)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0402    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(04,02)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.



        05 tetris-preview0103    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(01,03)
                        line                + 1.78
                        column              10
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-preview0203    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(02,03)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0303    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(03,03)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0403    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(04,03)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-preview0104    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(01,04)
                        line                + 1.78
                        column              10
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.

        05 tetris-preview0204    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(02,04)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0304    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(03,04)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.
        05 tetris-preview0404    bitmap
                        BITMAP-HANDLE       xx-101-tetris-handle
                        BITMAP-NUMBER       WS-PREVIEW-WINDOW(04,04)
                        SIZE                32 pixels
                        lines               32 pixels
                        visible             ws-visible-03.


        05 highscore    label
                        column              60
                        line                10
                        Title               "High Score".
        05 scoretracker label
                        column              + 2
                        line                10
                        Title               ws-high-score.

procedure division.

*-----------------------------------------------------------------
*	Detail
*-----------------------------------------------------------------

cc-detail section.
cc-01.
       initialize ws-visible.
       move 0 to ws-visible-01.
       move 0 to ws-visible-02.
       move 1 to ws-visible-03.

       display ed-detail.
       initialize ws-time-delta.

       move 2 to WS-TSQUAREBLOCK(5,1)
       move 2 to WS-TSQUAREBLOCK(6,1)
       move 2 to WS-TSQUAREBLOCK(5,2)
       move 2 to WS-TSQUAREBLOCK(6,2)

       move 0502 to WS-SQUARE-PIVOT

       move 2 to WS-SQUARE-PREVIEW(2,2)
       move 2 to WS-SQUARE-PREVIEW(2,3)
       move 2 to WS-SQUARE-PREVIEW(3,2)
       move 2 to WS-SQUARE-PREVIEW(3,3)


       move 3 to WS-T-I-PIECE(5,1)
       move 3 to WS-T-I-PIECE(5,2)
       move 3 to WS-T-I-PIECE(5,3)
       move 3 to WS-T-I-PIECE(5,4)

       move 0503 to WS-I-PIVOT

       move 3 to WS-I-PREVIEW(2,1)
       move 3 to WS-I-PREVIEW(2,2)
       move 3 to WS-I-PREVIEW(2,3)
       move 3 to WS-I-PREVIEW(2,4)

       move 4 to WS-T-S-BLOCK(5,1)
       move 4 to WS-T-S-BLOCK(6,1)
       move 4 to WS-T-S-BLOCK(5,2)
       move 4 to WS-T-S-BLOCK(4,2)

       move 0502 to WS-S-PIVOT

       move 4 to WS-S-PREVIEW(3,2)
       move 4 to WS-S-PREVIEW(4,2)
       move 4 to WS-S-PREVIEW(3,3)
       move 4 to WS-S-PREVIEW(2,3)

       move 5 to WS-T-REVERSE-S-BLOCK(5,1)
       move 5 to WS-T-REVERSE-S-BLOCK(6,1)
       move 5 to WS-T-REVERSE-S-BLOCK(6,2)
       move 5 to WS-T-REVERSE-S-BLOCK(7,2)

       move 0602 to WS-RS-PIVOT

       move 5 to WS-REVERSE-S-PREVIEW(2,2)
       move 5 to WS-REVERSE-S-PREVIEW(1,2)
       move 5 to WS-REVERSE-S-PREVIEW(2,3)
       move 5 to WS-REVERSE-S-PREVIEW(3,3)

       move 6 to WS-T-L-BLOCK(5,1)
       move 6 to WS-T-L-BLOCK(5,2)
       move 6 to WS-T-L-BLOCK(5,3)
       move 6 to WS-T-L-BLOCK(6,3)

       move 0502 to WS-L-PIVOT

       move 6 to WS-L-PREVIEW(2,1)
       move 6 to WS-L-PREVIEW(2,2)
       move 6 to WS-L-PREVIEW(2,3)
       move 6 to WS-L-PREVIEW(3,3)

       move 7 to WS-T-REVERSE-L-BLOCK(6,1)
       move 7 to WS-T-REVERSE-L-BLOCK(6,2)
       move 7 to WS-T-REVERSE-L-BLOCK(6,3)
       move 7 to WS-T-REVERSE-L-BLOCK(5,3)

       move 0602 to WS-RL-PIVOT

       move 7 to WS-REVERSE-L-PREVIEW(3,1)
       move 7 to WS-REVERSE-L-PREVIEW(3,2)
       move 7 to WS-REVERSE-L-PREVIEW(3,3)
       move 7 to WS-REVERSE-L-PREVIEW(2,3)

       move 8 to WS-T-TRIANGLE-BLOCK(5,1)
       move 8 to WS-T-TRIANGLE-BLOCK(5,2)
       move 8 to WS-T-TRIANGLE-BLOCK(4,2)
       move 8 to WS-T-TRIANGLE-BLOCK(6,2)

       move 0502 to WS-T-PIVOT

       move 8 to WS-TRIANGLE-PREVIEW(3,2)
       move 8 to WS-TRIANGLE-PREVIEW(3,3)
       move 8 to WS-TRIANGLE-PREVIEW(2,3)
       move 8 to WS-TRIANGLE-PREVIEW(4,3)


       display ed-tetris


* Tetris Logik Zeug hier (This shit happens in some kind of loop I'm too lazy to dig out)

*Music breaks program if mixed with other sounds
           if is-f1

             if tetris-stopped
                SET IS-KEY-ENTER TO TRUE
*                perform thread cc-sound3, handle in ws-tetris-music-thread-handle
                perform cc-time-start
                COMPUTE WS-NEXT-BLOCK = FUNCTION RANDOM (WS-START-TIME) * 8 + 1
                MOVE WS-EMPTY-BOARD TO WS-TETRIS-FIELD
                MOVE WS-EMPTY-BOARD TO WS-STATIC-FIELD
                perform thread cc-game-loop, handle in ws-tetris-thread-handle
                set tetris-running to true
             end-if

           end-if

*-----------------------------------------------------------------
*	Game Loop
*-----------------------------------------------------------------

cc-game-loop section.
cc-01.

perform until is-key-end or ws-prg-exit = 1

                if BRICK-IS-NOT-FALLING
                    perform cc-new-brick
                    display ed-tetris
                end-if

                    perform cc-time-end
                    perform cc-time-delta

                        if is-key-right
                            perform cc-move-piece-right
                            set is-key-enter to true
                            display ed-tetris
                        end-if

                        if is-key-down
                            perform until BLOCKED
                            perform cc-lower-piece
                            end-perform
                            set is-key-enter to true
                            display ed-tetris
                        end-if



                        if is-key-left
                            perform cc-move-piece-left
                            set is-key-enter to true
                            display ed-tetris
                        end-if


                        if is-key-up
                            perform cc-rotate-right
                            set is-key-enter to true
                            display ed-tetris
                        end-if



                    if WS-TIME-DELTA > 15

                    perform cc-lower-piece

                    perform cc-time-start
                    display ed-tetris
                    end-if



end-perform.
cc-exit.
exit.
*-----------------------------------------------------------------
*	Timer Funktionen
*-----------------------------------------------------------------
cc-time-start section.
cc-01.

  accept WS-START-TIME from time

cc-exit.
    exit.

cc-time-end section.
cc-01.

       Accept WS-END-TIME from time

cc-exit.
    exit.

cc-time-delta section.
cc-01.


       COMPUTE WS-TIME-DELTA = WS-START-TIME - WS-END-TIME

cc-exit.
    exit.

*-----------------------------------------------------------------
*	New Brick
*-----------------------------------------------------------------

cc-new-brick section.
cc-01.

if NEXT-I-PIECE
MOVE WS-I-PIECE TO WS-FALLING-PIECE
MOVE WS-I-PIVOT TO WS-PIVOT
end-if
if NEXT-L-BLOCK
MOVE WS-L-BLOCK TO WS-FALLING-PIECE
MOVE WS-L-PIVOT TO WS-PIVOT
end-if
if NEXT-REVERSE-L-BLOCK
MOVE WS-REVERSE-L-BLOCK TO WS-FALLING-PIECE
MOVE WS-RL-PIVOT TO WS-PIVOT
end-if
if NEXT-S-BLOCK
MOVE WS-S-BLOCK TO WS-FALLING-PIECE
MOVE WS-S-PIVOT TO WS-PIVOT
end-if
if NEXT-REVERSE-S-BLOCK
MOVE WS-REVERSE-S-BLOCK TO WS-FALLING-PIECE
MOVE WS-RS-PIVOT TO WS-PIVOT
end-if
if NEXT-TRIANGLE-BLOCK
MOVE WS-TRIANGLE-BLOCK TO WS-FALLING-PIECE
MOVE WS-T-PIVOT TO WS-PIVOT
end-if
if NEXT-SQUARE-BLOCK
MOVE WS-SQUARE-BLOCK to WS-FALLING-PIECE
MOVE WS-S-PIVOT TO WS-PIVOT
end-if

MOVE 0 TO WS-ROTATION

Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 5

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 11

            if WS-STATIC-TETSQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) = 1 then

               if WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

                MOVE WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) TO WS-TETSQUARE(WS-X-ITERATOR,WS-Y-ITERATOR)

               end-if

            end-if

            if WS-STATIC-TETSQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

               if WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

                SET TETRIS-STOPPED TO TRUE
                call "WIN$PLAYSOUND" using "", SOUND-FLAGS GIVING SOUND-STATUS

*                STOP THREAD ws-tetris-music-thread-handle
                STOP THREAD ws-tetris-thread-handle


               end-if

            end-if


        end-perform
 end-perform.

MOVE WS-NEXT-BLOCK TO WS-CURRENT-BLOCK

set BRICK-IS-FALLING to true.
COMPUTE WS-NEXT-BLOCK = FUNCTION RANDOM(WS-START-TIME) * 8 + 1

if NEXT-I-PIECE
MOVE WS-I-PIECE-PREVIEW-DATA TO WS-PREVIEW-WINDOW-DATA
end-if
if NEXT-L-BLOCK
MOVE WS-L-BLOCK-PREVIEW-DATA TO WS-PREVIEW-WINDOW-DATA
end-if
if NEXT-REVERSE-L-BLOCK
MOVE WS-REVERSE-L-BLOCK-PREVIEW-DATA TO WS-PREVIEW-WINDOW-DATA
end-if
if NEXT-S-BLOCK
MOVE WS-S-BLOCK-PREVIEW-DATA TO WS-PREVIEW-WINDOW-DATA
end-if
if NEXT-REVERSE-S-BLOCK
MOVE WS-REVERSE-S-BLOCK-PREVIEW-DATA TO WS-PREVIEW-WINDOW-DATA
end-if
if NEXT-TRIANGLE-BLOCK
MOVE WS-TRIANGLE-BLOCK-PREVIEW-DATA TO WS-PREVIEW-WINDOW-DATA
end-if
if NEXT-SQUARE-BLOCK
MOVE WS-SQUARE-BLOCK-PREVIEW-DATA to WS-PREVIEW-WINDOW-DATA
end-if

cc-exit.
    exit.


*-----------------------------------------------------------------
*	Rotation calculation right. Can be out of bounds, we add 4 to x and y of matrix and 3 to every coordinate
*-----------------------------------------------------------------

cc-rotation-calc-right section.
cc-01.

MOVE WS-NEW-FALLING-PIECE-OOB-EMPTY TO WS-NEW-FALLING-PIECE-OOB


COMPUTE WS-NEW-PIVOT-X = WS-PIVOT-X + WS-OFFSET-TETRIS-X + 3
COMPUTE WS-NEW-PIVOT-Y = WS-PIVOT-Y + WS-OFFSET-TETRIS-Y + 3

ADD 3 TO WS-PIVOT-X
ADD 3 TO WS-PIVOT-Y



** New Pivot location
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X, WS-NEW-PIVOT-Y) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X, WS-PIVOT-Y)


** New Diagonal Locations

COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X - 1, WS-NEW-PIVOT-Y - 1) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X - 1, WS-PIVOT-Y + 1)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 1, WS-NEW-PIVOT-Y - 1) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X - 1, WS-PIVOT-Y - 1)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X - 1, WS-NEW-PIVOT-Y + 1) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 1, WS-PIVOT-Y + 1)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 1, WS-NEW-PIVOT-Y + 1) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 1, WS-PIVOT-Y - 1)


** New Directly adjacent locations

COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X - 1, WS-NEW-PIVOT-Y + 0) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 0, WS-PIVOT-Y + 1)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 1, WS-NEW-PIVOT-Y + 0) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 0, WS-PIVOT-Y - 1)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 0, WS-NEW-PIVOT-Y + 1) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 1, WS-PIVOT-Y + 0)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 0, WS-NEW-PIVOT-Y - 1) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X - 1, WS-PIVOT-Y + 0)


** New far away I-Piece locations

COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 0, WS-NEW-PIVOT-Y + 2) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 2, WS-PIVOT-Y + 0)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 0, WS-NEW-PIVOT-Y - 2) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X - 2, WS-PIVOT-Y + 0)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X - 2, WS-NEW-PIVOT-Y + 0) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 0, WS-PIVOT-Y + 2)
COMPUTE WS-NEW-FALLING-PIECESQUARE-OOB(WS-NEW-PIVOT-X + 2, WS-NEW-PIVOT-Y + 0) = WS-FALLING-PIECESQUARE-OOB(WS-PIVOT-X + 0, WS-PIVOT-Y - 2)

SUBTRACT 3 FROM WS-PIVOT-X
SUBTRACT 3 FROM WS-PIVOT-Y.

cc-exit.
    exit.

*-----------------------------------------------------------------
*	Calculate offset
*-----------------------------------------------------------------

cc-get-offset section.
cc-01.

EVALUATE TRUE

when CURRENT-I-PIECE

        EVALUATE WS-ROTATION

        when 0

            MOVE 0 TO WS-OFFSET-TETRIS-X
            MOVE 0 TO WS-OFFSET-TETRIS-Y

        when 1

            MOVE -1 TO WS-OFFSET-TETRIS-X
            MOVE 0 TO WS-OFFSET-TETRIS-Y

        when 2

            MOVE -1 TO WS-OFFSET-TETRIS-X
            MOVE 1 TO WS-OFFSET-TETRIS-Y

        when 3

            MOVE 0 TO WS-OFFSET-TETRIS-X
            MOVE 1 TO WS-OFFSET-TETRIS-Y

        END-EVALUATE


when CURRENT-SQUARE-BLOCK

        EVALUATE WS-ROTATION

            when 0

                MOVE 0 TO WS-OFFSET-TETRIS-X
                MOVE 0 TO WS-OFFSET-TETRIS-Y

            when 1

                MOVE 0 TO WS-OFFSET-TETRIS-X
                MOVE -1 TO WS-OFFSET-TETRIS-Y

            when 2

                MOVE -1 TO WS-OFFSET-TETRIS-X
                MOVE -1 TO WS-OFFSET-TETRIS-Y

            when 3

                MOVE -1 TO WS-OFFSET-TETRIS-X
                MOVE 0 TO WS-OFFSET-TETRIS-Y
        END-EVALUATE

when OTHER

        EVALUATE WS-ROTATION

            when 0

                MOVE 0 TO WS-OFFSET-TETRIS-X
                MOVE 0 TO WS-OFFSET-TETRIS-Y

            when 1

                MOVE 0 TO WS-OFFSET-TETRIS-X
                MOVE 0 TO WS-OFFSET-TETRIS-Y

            when 2

                MOVE 0 TO WS-OFFSET-TETRIS-X
                MOVE 0 TO WS-OFFSET-TETRIS-Y

            when 3

                MOVE 0 TO WS-OFFSET-TETRIS-X
                MOVE 0 TO WS-OFFSET-TETRIS-Y

      END-EVALUATE

end-evaluate

        EVALUATE WS-ROTATION

        when 0 thru 2
            ADD 1 to WS-ROTATION

        when 3
            SUBTRACT 3 FROM WS-ROTATION

        END-EVALUATE.

cc-exit.
    exit.


*-----------------------------------------------------------------
*	Checks if ws-new-falling-piecesquare-oob can be placed onto playing field, activates IS-BLOCKED flag if not, otherwise writes the piece
*-----------------------------------------------------------------

cc-rotate-if-not-blocked section.
cc-01.

SET NOT-BLOCKED TO TRUE

Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 24

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 17

           if WS-NEW-FALLING-PIECESQUARE-OOB(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

                EVALUATE WS-X-ITERATOR

** This Blocks if out of bounds

                when 1 THRU 3
                    SET BLOCKED TO TRUE

                when 14 THRU 16
                    SET BLOCKED TO TRUE

                END-EVALUATE

                EVALUATE WS-Y-ITERATOR

** This Blocks if out of bounds

                when 1 THRU 3
                    SET BLOCKED TO TRUE

                when 20 THRU 23
                    SET BLOCKED TO TRUE

                END-EVALUATE

                if NOT-BLOCKED then
** This blocks if position already occupied
                        if WS-STATIC-TETSQUARE(WS-X-ITERATOR - 3, WS-Y-ITERATOR - 3) > 1 then

                            SET BLOCKED TO TRUE

                        end-if


                end-if

            end-perform

        end-perform

        if NOT-BLOCKED
        Move WS-EMPTY-BOARD to WS-FALLING-PIECE
        Move WS-STATIC-FIELD to WS-TETRIS-FIELD


        Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 24

            Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 17

                if WS-NEW-FALLING-PIECESQUARE-OOB(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

                    COMPUTE WS-FALLING-PIECESQUARE(WS-X-ITERATOR - 3, WS-Y-ITERATOR - 3) = WS-NEW-FALLING-PIECESQUARE-OOB(WS-X-ITERATOR, WS-Y-ITERATOR)

                end-if

                end-perform

        end-perform

        end-if



cc-exit.
    exit.

*-----------------------------------------------------------------
*	Remove array boundaries
*-----------------------------------------------------------------

cc-boundary-remover section.
cc-01.

MOVE WS-NEW-FALLING-PIECE-OOB-EMPTY TO WS-FALLING-PIECE-OOB


Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 18

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 11

            COMPUTE WS-FALLING-PIECESQUARE-OOB(WS-X-ITERATOR + 3, WS-Y-ITERATOR + 3) = WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR)

        end-perform

end-perform


cc-exit.
    exit.

*-----------------------------------------------------------------
*	Rotate piece right
*-----------------------------------------------------------------

cc-rotate-right section.
cc-01.

perform cc-get-offset

perform cc-boundary-remover


perform cc-rotation-calc-right


perform cc-rotate-if-not-blocked



perform cc-update-falling-piece


COMPUTE WS-PIVOT-X = WS-PIVOT-X + WS-OFFSET-TETRIS-X
COMPUTE WS-PIVOT-Y = WS-PIVOT-Y + WS-OFFSET-TETRIS-Y

SET NOT-BLOCKED TO TRUE
**Something is wrong here mistake error whatever wtf cc-exit. not working. Somehow compiles without it???
    exit.
*-----------------------------------------------------------------
*	Update Falling Piece
*-----------------------------------------------------------------

cc-update-falling-piece section.
cc-01.

Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 18

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 11

            if WS-TETSQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) = 1 then

               if WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

                MOVE WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) TO WS-TETSQUARE(WS-X-ITERATOR,WS-Y-ITERATOR)

                end-if

            end-if
        end-perform
 end-perform.


cc-exit.
    exit.

*-----------------------------------------------------------------
*	ckeck for full line
*-----------------------------------------------------------------
cc-check-for-full-line section.
cc-01.

SET WS-LINES-FILLED to 0

Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 18

        SET WS-SQUARES-IN-LINE to 0

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 11

           COMPUTE WS-NEW-X-ITERATOR = WS-X-ITERATOR - 1

           If WS-STATIC-TETSQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

            ADD 1 to WS-SQUARES-IN-LINE

                if WS-SQUARES-IN-LINE = 10
                ADD 1 to WS-LINES-FILLED
                ADD 1 TO WS-LINES-TOTAL

                    perform cc-clear-line
                    perform cc-sound1

                end-if

           end-if

        end-perform
 end-perform

 evaluate WS-LINES-FILLED

        when 1 add 10 to ws-high-score

        when 2 add 50 to ws-high-score

        when 3 add 500 to ws-high-score

        when 4 add 1000 to ws-high-score
end-evaluate.






cc-exit.
    exit.

*-----------------------------------------------------------------
*	Clear Line
*-----------------------------------------------------------------

cc-clear-line section.
cc-01.

MOVE WS-Y-ITERATOR TO WS-TEMP-Y-IT
MOVE WS-X-ITERATOR TO WS-TEMP-X-IT

Perform varying WS-TEMP-X-IT FROM 1 by 1 UNTIL WS-TEMP-X-IT = 11

        COMPUTE WS-TETSQUARE(WS-TEMP-X-IT, WS-TEMP-Y-IT) = 1
        COMPUTE WS-STATIC-TETSQUARE(WS-TEMP-X-IT, WS-TEMP-Y-IT) = 1

end-perform

SUBTRACT 1 FROM WS-TEMP-Y-IT
MOVE WS-TEMP-Y-IT to WS-TEMP-X-IT

Perform varying WS-TEMP-Y-IT From WS-TEMP-X-IT by -1 until WS-TEMP-Y-IT = 1

        Perform varying WS-TEMP-X-IT FROM 1 by 1 until WS-TEMP-X-IT = 11

            COMPUTE WS-TETSQUARE(WS-TEMP-X-IT, WS-TEMP-Y-IT + 1) = WS-TETSQUARE(WS-TEMP-X-IT, WS-TEMP-Y-IT)
            COMPUTE WS-STATIC-TETSQUARE(WS-TEMP-X-IT, WS-TEMP-Y-IT + 1) = WS-STATIC-TETSQUARE(WS-TEMP-X-IT, WS-TEMP-Y-IT)

        end-perform
 end-perform




cc-exit.
    exit.

*-----------------------------------------------------------------
*	Sound 1
*-----------------------------------------------------------------

cc-sound1 section.
cc-01.

CALL "WIN$PLAYSOUND" USING Tetris-Sound-Lineclear, SOUND-FLAGS2 GIVING SOUND-STATUS2


cc-exit.
    exit.

*-----------------------------------------------------------------
*	Sound 2
*-----------------------------------------------------------------
cc-sound2 section.
cc-01.

CALL "WIN$PLAYSOUND" USING Tetris-Sound-fall, SOUND-FLAGS3 GIVING SOUND-STATUS3


cc-exit.
    exit.

*-----------------------------------------------------------------
*	Sound 3
*-----------------------------------------------------------------
cc-sound3 section.
cc-01.

call "WIN$PLAYSOUND" USING Tetris-Sound, SOUND-FLAGS GIVING SOUND-STATUS


cc-exit.
    exit.

*-----------------------------------------------------------------
*	Lower Piece
*-----------------------------------------------------------------

cc-lower-piece section.
cc-01.

set NOT-BLOCKED to true

Move WS-EMPTY-BOARD to WS-NEW-FALLING-PIECE

Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 18

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 11

           if WS-Y-ITERATOR < 17
           COMPUTE WS-NEW-Y-ITERATOR = WS-Y-ITERATOR + 1
           end-if

           if WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then


                COMPUTE WS-NEW-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-NEW-Y-ITERATOR) = WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR)



*               The following if conditions happen if the space below the piece is blocked or we hit bottom.
                    if WS-TETSQUARE(WS-X-ITERATOR, WS-NEW-Y-ITERATOR) > 1 then

                        if WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-NEW-Y-ITERATOR) <> WS-NEW-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-NEW-Y-ITERATOR) then

                        set BLOCKED to true

                        end-if

                    end-if

                    if WS-Y-ITERATOR = 17

                    set BLOCKED to true

                    end-if


                COMPUTE WS-TETSQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) = 1
           end-if


        end-perform
 end-perform
if NOT-BLOCKED
MOVE WS-NEW-FALLING-PIECE to WS-FALLING-PIECE
ADD 1 TO WS-PIVOT-Y
perform cc-update-falling-piece
end-if



perform cc-update-falling-piece.

if BLOCKED

perform cc-sound2
SET BRICK-IS-NOT-FALLING to TRUE
MOVE WS-TETRIS-FIELD to WS-STATIC-FIELD

perform cc-check-for-full-line
end-if




cc-exit.
    exit.

*-----------------------------------------------------------------
*	Move piece left
*-----------------------------------------------------------------

cc-move-piece-left section.
cc-01.

SET NOTATEDGE TO TRUE

Move WS-EMPTY-BOARD to WS-NEW-FALLING-PIECE

Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 18

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 11

           COMPUTE WS-NEW-X-ITERATOR = WS-X-ITERATOR - 1


           if WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

                if WS-NEW-X-ITERATOR < 1 OR WS-STATIC-TETSQUARE(WS-NEW-X-ITERATOR,WS-Y-ITERATOR) > 1

                SET ATEDGE TO TRUE

                else

                COMPUTE WS-NEW-FALLING-PIECESQUARE(WS-NEW-X-ITERATOR, WS-Y-ITERATOR) = WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR)

                COMPUTE WS-TETSQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) = 1
           end-if


        end-perform
 end-perform

if NOTATEDGE
MOVE WS-NEW-FALLING-PIECE to WS-FALLING-PIECE
SUBTRACT 1 FROM WS-PIVOT-X
perform cc-update-falling-piece


end-if




cc-exit.
    exit.

*-----------------------------------------------------------------
*	Move piece right
*-----------------------------------------------------------------

cc-move-piece-right section.
cc-01.

SET NOTATEDGE TO TRUE

Move WS-EMPTY-BOARD to WS-NEW-FALLING-PIECE

Perform varying WS-Y-ITERATOR From 1 by 1 until WS-Y-ITERATOR = 18

        Perform varying WS-X-ITERATOR FROM 1 by 1 until WS-X-ITERATOR = 11

           COMPUTE WS-NEW-X-ITERATOR = WS-X-ITERATOR + 1


           if WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) > 1 then

                if WS-NEW-X-ITERATOR > 10 OR WS-STATIC-TETSQUARE(WS-NEW-X-ITERATOR,WS-Y-ITERATOR) > 1

                SET ATEDGE TO TRUE

                else

                COMPUTE WS-NEW-FALLING-PIECESQUARE(WS-NEW-X-ITERATOR, WS-Y-ITERATOR) = WS-FALLING-PIECESQUARE(WS-X-ITERATOR, WS-Y-ITERATOR)

                COMPUTE WS-TETSQUARE(WS-X-ITERATOR, WS-Y-ITERATOR) = 1
           end-if


        end-perform
 end-perform

if NOTATEDGE
MOVE WS-NEW-FALLING-PIECE to WS-FALLING-PIECE
ADD 1 TO WS-PIVOT-X
perform cc-update-falling-piece


end-if




cc-exit.
    exit.


*-----------------------------------------------------------------
*	Load Tetris bitmap
*-----------------------------------------------------------------

xx-101-load-tetris-bitmap section.
xx-01.
    initialize ws-toolbar.
	accept ws-toolbar-dir
        from environment "bitmap_dir"
    end-accept

	inspect ws-toolbar-dir replacing trailing space by low-value.

	string
		ws-toolbar-dir
                    delimited by low-value
		"\"			delimited by size
		"fbtet.bmp"
                    delimited by size
					into ws-toolbar-fileid
	end-string

	inspect ws-toolbar-fileid replacing trailing space by low-value.

    call "w$bitmap"
		using wbitmap-load ws-toolbar-fileid giving xx-101-tetris-handle
	end-call.
cc-exit.
    exit.
	
	
*-----------------------------------------------------------------
*	Destroy Priorität and Tetris bitmap
*-----------------------------------------------------------------

xx-101-destroy-prioritaeten-bitmap section.
xx-01.
	call "w$bitmap"
		using wbitmap-destroy, xx-101-prioritaeten-handle

	end-call.

        call "w$bitmap"
                using wbitmap-destroy, xx-101-tetris-handle
        end-call.

        call "WIN$PLAYSOUND" using "", SOUND-FLAGS GIVING SOUND-STATUS.


        perform cc-time-start
        perform cc-time-end
        perform cc-time-delta

        perform until WS-TIME-DELTA > 200
        perform cc-time-end
        perform cc-time-delta
        end-perform




cc-exit.
    exit.