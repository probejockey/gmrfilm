c
c-------------------------------HELPFILE-----------------------------------
c
c author r.a. waldo 7/91
c
      subroutine helpfile(ifile)
      character*80 line
      if (ifile.eq.1) open (unit=8,file='help1.dat',status='unknown')
      if (ifile.eq.2) open (unit=8,file='help2.dat',status='unknown')
      if (ifile.eq.3) open (unit=8,file='help3.dat',status='unknown')
      if (ifile.eq.4) open (unit=8,file='help4.dat',status='unknown')
1     read (8,998,end=999)line
      print 998,line
      goto 1
998   format(a80)
999   close (unit=8)
      return
      end
