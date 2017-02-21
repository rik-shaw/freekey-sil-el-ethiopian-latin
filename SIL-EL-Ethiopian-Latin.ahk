;========================================================
;      SIL Ethiopian Latin
;========================================================
;version 1.1 2016-02-19: original freekey release
;
;Do not change this:
#include BasicRoutines.ahk
;

;========================================================
; The name of the this keyboard
;========================================================
KeyboardName()
{
  Global  ; don't modify this line
  sName        = SIL-EL-Ethiopian-Latin
}

;========================================================
; Basic definitions for the keyboard
;========================================================
PrepareValues()
{
  Global

; Used with ReplaceDoubleKey(group)
; Value: LastOutput(LO) followed by InputKey(K) results to newValue(nV)
GroupSpecial =
(
  $] $a U+028c| |
  $] $A U+0245| |
  $; $b U+0253| | $b $< U+0253| |
  $; $B U+0181| | $B $< U+0181| |
  $; $c U+00e7| | $c $< U+00e7| |
  $; $C U+00c7| | $C $< U+00c7| |
  $; $d U+0257| | $d $< U+0257| |
  $; $D U+018a| | $D $< U+018a| |
  $; $e U+025b| | $e $< U+025b| | $] $e U+025b| | $: $e U+0259| | $= $e U+0259| |
  $; $E U+0190| | $E $< U+0190| | $] $E U+0190| | $: $E U+018f| | $= $E U+018f| |
  $; $g U+0260| | $g $< U+0260| |
  $; $G U+0193| | $G $< U+0193| |
  $; $h U+0128| |
  $; $i U+0268| | $i $< U+0268| | $i $= U+0268| | $] $i U+0269| |
  $; $I U+0197| | $I $< U+0197| | $I $= U+0197| | $] $I U+0196| |
  $; $n U+014b| | $n $< U+014b| | $: $n U+0272| | $= $n U+0272| |
  $; $N U+014a| | $N $< U+014a| | $: $N U+019d| | $= $N U+019d| |
  $; $o U+0254| | $o $< U+0254| | $] $o U+0254| |
  $; $O U+0186| | $O $< U+0186| | $] $O U+0186| |
  $; $s U+0283| | $s $< U+0283| |
  $; $S U+0286| | $S $< U+0286| |
  $; $u U+0289| | $u $< U+0289| | $u $= U+0289| | $] $u U+028b| |
  $; $U U+0244| | $U $< U+0244| | $U $= U+0244| | $] $U U+01b2| |
  $; $x U+0295| |
  $] $: U+A789| | $; $' U+a78c| |
  $] $] U+02bc| | U+02bc $] $]| |
)

; Used with ReplaceLastKey(group)
; Value: LastOutput (LO) is replaced with new value (nV)
GroupDecomposed =
(
      $1 U+0301| |   $2 U+0300| |   $3 U+0302| |
      $4 U+030c| |   $5 U+0303| |   $6 U+0315| |
      $7 U+030b| |   $8 U+030f| |   $9 U+0304| |
      $0 U+0331| |
)

; Used with ReplaceDoubleKey(group)
; Value: LastOutput(LO) followed by InputKey(K) results to newValue(nV)
GroupComposed =
(
  $a $1 U+00e1| | $a $2 U+00e0| | $a $3 U+00e2| | $a $4 U+01ce| | $a $8 U+0201| | $a $9 U+0101| |
  $A $1 U+00c1| | $A $2 U+00c0| | $A $3 U+00c2| | $A $4 U+01cd| | $A $8 U+0200| | $A $9 U+0100| |
  $e $1 U+00e9| | $e $2 U+00e8| | $e $3 U+00ea| | $e $4 U+011b| | $e $8 U+0205| | $e $9 U+0113| |
  $E $1 U+00c9| | $E $2 U+00c8| | $E $3 U+00ca| | $E $4 U+011a| | $E $8 U+0204| | $E $9 U+0112| |
  $i $1 U+00ed| | $i $2 U+00ec| | $i $3 U+00ee| | $i $4 U+01d0| | $i $8 U+0209| | $i $9 U+012b| |
  $I $1 U+00cd| | $I $2 U+00cc| | $I $3 U+00ce| | $I $4 U+01cf| | $I $8 U+0208| | $I $9 U+012a| |
  $m $1 U+1e3f| |
  $M $1 U+1e3e| |
  $n $1 U+0144| | $n $5 U+00f1| |
  $N $1 U+0143| | $N $5 U+00d1| |
  $o $1 U+00f3| | $o $2 U+00f2| | $o $3 U+00f4| | $o $4 U+01d2| | $o $7 U+0151| | $o $8 U+020d| | $o $9 U+014d| |
  $O $1 U+00d3| | $O $2 U+00d2| | $O $3 U+00d4| | $O $4 U+01d1| | $O $7 U+0150| | $O $8 U+020c| | $O $9 U+014c| |
  $u $1 U+00fa| | $u $2 U+00f9| | $u $3 U+00fb| | $u $4 U+01d4| | $u $7 U+0171| | $u $8 U+0215| | $u $9 U+016b| |
  $U $1 U+00da| | $U $2 U+00d9| | $U $3 U+00db| | $U $4 U+01d3| | $U $7 U+0170| | $U $8 U+0214| | $U $9 U+016a| |
)

GroupPunctExchange = ( $' U+2018|  $" U+201c| )

; Used with ReplaceDoubleKey(group)
; Value: LastOutput(LO) followed by InputKey(K) results to newValue(nV)
GroupPunctDouble =
(
  U+2018 $' U+2019| | U+2019 $' U+0027| | U+0027 $' U+2018| |
  U+201c $" U+201d| | U+201d $" U+0022| | U+0022 $" U+201c| |
      $> $> U+00bb| |     $< $< U+00ab| |
      $> $" U+00bb| |     $< $" U+00ab| |
      $> $' U+203a| |     $< $' U+2039| |
)

GroupNumbers = ( $1 $2 $3 $4 $5 $6 $7 $8 $9 $0 )

GroupDiacriticBase = ( $a $b $c $d $e $f $g $h $i $j $k $l $m $n $o $p $q $r $s $t $u $v $w $x $y $z $A $B $C $D $E $F $G $H $I $J $K $L $M $N $O $P $Q $R $S $T $U $V $W $X $Y $Z )

}

;========================================================
;  Input routine for processing keystrokes:
;========================================================
KeyDown(which)
{
  Global
  StringCaseSense, On

;  msgbox lastkey XX%LastKey%XX
;  msgbox lastoutput XX%LastOutput%XX
;  msgbox which XX%which%XX

  ; lastoutput gets wiped out by space or other special character.
  ; Need to check this to make sure that lastwhich is also wiped out.
  if (LastOutput == "")
  {
    LastWhich := ""
  }

  ; setup base characters
  ReplaceDoubleKey(GroupSpecial)

  if (InGroup(GroupDiacriticBase, LastWhich) == true)
  {
    ; add diacritics
    if (ReplaceDoubleKey(GroupComposed) == false)
    {
      ; if no composed key, try decomposed
      ExchangeKey(GroupDecomposed)
    }
  }

  ; punctuation double replacement
  if (ReplaceDoubleKey(GroupPunctDouble) == false)
  {
    ; exchange punctuation if not handled by double replacement above
    ExchangeKey(GroupPunctExchange)
  }

  ; save lastwhich for next time to see if diacritic needed
  LastWhich := which
}
