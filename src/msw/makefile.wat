#!/binb/wmake.exe

# This file was automatically generated by tmake 
# DO NOT CHANGE THIS FILE, YOUR CHANGES WILL BE LOST! CHANGE WAT.T!

#
# File:     makefile.wat
# Author:   Julian Smart
# Created:  1998
#
# Makefile : Builds wxWindows library for Watcom C++, WIN32
#
# NOTE: This file is generated from wat.t by tmake, but not all bugs have
# been removed from this process. If wxWindows doesn't compile,
# check the following and edit this makefile accordingly:
#
# - OLE-related files such as oleutils.cpp should have 'ole\' prepended
#   to the path.
# - extended.c, gsocket.c, unzip.c must be compiled using $(CC), not $(CCC).
#   They may also be wrongly specified as extended.cpp, etc.

WXDIR = ..\..

!include $(WXDIR)\src\makewat.env

WXLIB = $(WXDIR)\lib

LIBTARGET   = $(WXLIB)\wx.lib
DUMMY=dummydll
# ODBCLIB     = ..\..\contrib\odbc\odbc32.lib

EXTRATARGETS = png zlib jpeg tiff regex
EXTRATARGETSCLEAN = clean_png clean_zlib clean_jpeg clean_tiff clean_regex
GENDIR=$(WXDIR)\src\generic
COMMDIR=$(WXDIR)\src\common
JPEGDIR=$(WXDIR)\src\jpeg
TIFFDIR=$(WXDIR)\src\tiff
MSWDIR=$(WXDIR)\src\msw
OLEDIR=$(MSWDIR)\ole
HTMLDIR=$(WXDIR)\src\html

DOCDIR = $(WXDIR)\docs

GENERICOBJS= busyinfo.obj &
	calctrl.obj &
	choicdgg.obj &
	dcbuffer.obj &
	dcpsg.obj &
	dirctrlg.obj &
	dragimgg.obj &
	grid.obj &
	gridctrl.obj &
	gridsel.obj &
	laywin.obj &
	logg.obj &
	numdlgg.obj &
	panelg.obj &
	progdlgg.obj &
	prop.obj &
	propform.obj &
	proplist.obj &
	sashwin.obj &
	scrlwing.obj &
	spinctlg.obj &
	splash.obj &
	splitter.obj &
	statusbr.obj &
	tbarsmpl.obj &
	textdlgg.obj &
	tipdlg.obj &
	tipwin.obj &
	treectlg.obj &
	treelay.obj &
	wizard.obj

# These are generic things that don't need to be compiled on MSW,
# but sometimes it's useful to do so for testing purposes.
NONESSENTIALOBJS= accel.obj &
	caret.obj &
	colrdlgg.obj &
	dirdlgg.obj &
	fdrepdlg.obj &
	filedlgg.obj &
	fontdlgg.obj &
	helpext.obj &
	helphtml.obj &
	imaglist.obj &
	listctrl.obj &
	msgdlgg.obj &
	notebook.obj &
	paletteg.obj &
	printps.obj &
	prntdlgg.obj &
	statline.obj &
	tabg.obj &
	timer.obj

COMMONOBJS = &
	y_tab.obj &
	appcmn.obj &
	artprov.obj &
	artstd.obj &
	choiccmn.obj &
	clipcmn.obj &
	clntdata.obj &
	cmdline.obj &
	cmdproc.obj &
	cmndata.obj &
	config.obj &
	containr.obj &
	cshelp.obj &
	ctrlcmn.obj &
	ctrlsub.obj &
	datetime.obj &
	datstrm.obj &
	db.obj &
	dbgrid.obj &
	dbtable.obj &
	dcbase.obj &
	dircmn.obj &
	dlgcmn.obj &
	dndcmn.obj &
	dobjcmn.obj &
	docmdi.obj &
	docview.obj &
	dseldlg.obj &
	dynarray.obj &
	dynlib.obj &
	dynload.obj &
	effects.obj &
	encconv.obj &
	event.obj &
	extended.obj &
	fddlgcmn.obj &
	ffile.obj &
	file.obj &
	fileconf.obj &
	filefn.obj &
	filename.obj &
	filesys.obj &
	fontcmn.obj &
	fontmap.obj &
	framecmn.obj &
	fs_inet.obj &
	fs_mem.obj &
	fs_zip.obj &
	ftp.obj &
	gaugecmn.obj &
	gdicmn.obj &
	geometry.obj &
	gifdecod.obj &
	hash.obj &
	hashmap.obj &
	helpbase.obj &
	http.obj &
	iconbndl.obj &
	imagall.obj &
	imagbmp.obj &
	image.obj &
	imaggif.obj &
	imagiff.obj &
	imagjpeg.obj &
	imagpcx.obj &
	imagpng.obj &
	imagpnm.obj &
	imagtiff.obj &
	imagxpm.obj &
	intl.obj &
	ipcbase.obj &
	layout.obj &
	lboxcmn.obj &
	list.obj &
	log.obj &
	longlong.obj &
	matrix.obj &
	memory.obj &
	menucmn.obj &
	mimecmn.obj &
	module.obj &
	mstream.obj &
	nbkbase.obj &
	object.obj &
	odbc.obj &
	paper.obj &
	popupcmn.obj &
	prntbase.obj &
	process.obj &
	protocol.obj &
	quantize.obj &
	radiocmn.obj &
	regex.obj &
	resource.obj &
	sckaddr.obj &
	sckfile.obj &
	sckipc.obj &
	sckstrm.obj &
	sizer.obj &
	socket.obj &
	statbar.obj &
	strconv.obj &
	stream.obj &
	string.obj &
	sysopt.obj &
	tbarbase.obj &
	textbuf.obj &
	textcmn.obj &
	textfile.obj &
	timercmn.obj &
	tokenzr.obj &
	toplvcmn.obj &
	treebase.obj &
	txtstrm.obj &
	unzip.obj &
	url.obj &
	utilscmn.obj &
	valgen.obj &
	validate.obj &
	valtext.obj &
	variant.obj &
	wfstream.obj &
	wincmn.obj &
	wxchar.obj &
	wxexpr.obj &
	xpmdecod.obj &
	zipstrm.obj &
	zstream.obj

MSWOBJS = accel.obj &
	app.obj &
	automtn.obj &
	bitmap.obj &
	bmpbuttn.obj &
	brush.obj &
	button.obj &
	caret.obj &
	checkbox.obj &
	checklst.obj &
	choice.obj &
	clipbrd.obj &
	colordlg.obj &
	colour.obj &
	combobox.obj &
	control.obj &
	curico.obj &
	cursor.obj &
	data.obj &
	dataobj.obj &
	dc.obj &
	dcclient.obj &
	dcmemory.obj &
	dcprint.obj &
	dcscreen.obj &
	dde.obj &
	dialog.obj &
	dialup.obj &
	dib.obj &
	dibutils.obj &
	dir.obj &
	dirdlg.obj &
	dragimag.obj &
	dropsrc.obj &
	droptgt.obj &
	enhmeta.obj &
	evtloop.obj &
	fdrepdlg.obj &
	filedlg.obj &
	font.obj &
	fontdlg.obj &
	fontenum.obj &
	fontutil.obj &
	frame.obj &
	gauge95.obj &
	gaugemsw.obj &
	gdiimage.obj &
	gdiobj.obj &
	glcanvas.obj &
	gsocket.obj &
	gsockmsw.obj &
	helpbest.obj &
	helpchm.obj &
	helpwin.obj &
	icon.obj &
	imaglist.obj &
	iniconf.obj &
	joystick.obj &
	listbox.obj &
	listctrl.obj &
	main.obj &
	mdi.obj &
	menu.obj &
	menuitem.obj &
	metafile.obj &
	mimetype.obj &
	minifram.obj &
	msgdlg.obj &
	mslu.obj &
	nativdlg.obj &
	notebook.obj &
	oleutils.obj &
	ownerdrw.obj &
	palette.obj &
	pen.obj &
	penwin.obj &
	printdlg.obj &
	printwin.obj &
	radiobox.obj &
	radiobut.obj &
	regconf.obj &
	region.obj &
	registry.obj &
	scrolbar.obj &
	settings.obj &
	slider95.obj &
	slidrmsw.obj &
	snglinst.obj &
	spinbutt.obj &
	spinctrl.obj &
	statbmp.obj &
	statbox.obj &
	statbr95.obj &
	statline.obj &
	stattext.obj &
	tabctrl.obj &
	taskbar.obj &
	tbar95.obj &
	tbarmsw.obj &
	textctrl.obj &
	tglbtn.obj &
	thread.obj &
	timer.obj &
	tooltip.obj &
	toplevel.obj &
	treectrl.obj &
	utils.obj &
	utilsexc.obj &
	uuid.obj &
	volume.obj &
	wave.obj &
	window.obj

HTMLOBJS = helpctrl.obj &
	helpdata.obj &
	helpfrm.obj &
	htmlcell.obj &
	htmlfilt.obj &
	htmlpars.obj &
	htmltag.obj &
	htmlwin.obj &
	htmprint.obj &
	m_dflist.obj &
	m_fonts.obj &
	m_hline.obj &
	m_image.obj &
	m_layout.obj &
	m_links.obj &
	m_list.obj &
	m_meta.obj &
	m_pre.obj &
	m_style.obj &
	m_tables.obj &
	winpars.obj

# Add $(NONESSENTIALOBJS) if wanting generic dialogs, PostScript etc.
OBJECTS = $(COMMONOBJS) $(GENERICOBJS) $(MSWOBJS) $(HTMLOBJS)

ARCHINCDIR=$(WXDIR)\lib\msw
SETUP_H=$(ARCHINCDIR)\wx\setup.h

all:        $(SETUP_H) $(OBJECTS) $(LIBTARGET) $(EXTRATARGETS) .SYMBOLIC

$(ARCHINCDIR)\wx:
    mkdir $(ARCHINCDIR)
    mkdir $(ARCHINCDIR)\wx

$(SETUP_H): $(WXDIR)\include\wx\msw\setup.h $(ARCHINCDIR)\wx
    copy $(WXDIR)\include\wx\msw\setup.h $@

$(LIBTARGET) : $(OBJECTS)
    %create tmp.lbc
    @for %i in ( $(OBJECTS) ) do @%append tmp.lbc +%i
    wlib /b /c /n /p=512 $^@ @tmp.lbc

#test : $(OBJECTS)
#    %create tmp.lbc
#    @for %i in ( $(OBJECTS) ) do @%append tmp.lbc +%i
#    wlib /b /c /n /p=512 $^@ @tmp.lbc


clean:   .SYMBOLIC $(EXTRATARGETSCLEAN)
    -erase *.obj
    -erase $(LIBTARGET)
    -erase *.pch
    -erase *.err
    -erase *.lbc

cleanall:   clean

accel.obj:     $(MSWDIR)\accel.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

app.obj:     $(MSWDIR)\app.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

automtn.obj:     $(OLEDIR)\automtn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

bitmap.obj:     $(MSWDIR)\bitmap.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

bmpbuttn.obj:     $(MSWDIR)\bmpbuttn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

brush.obj:     $(MSWDIR)\brush.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

button.obj:     $(MSWDIR)\button.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

caret.obj:     $(MSWDIR)\caret.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

checkbox.obj:     $(MSWDIR)\checkbox.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

checklst.obj:     $(MSWDIR)\checklst.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

choice.obj:     $(MSWDIR)\choice.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

clipbrd.obj:     $(MSWDIR)\clipbrd.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

colordlg.obj:     $(MSWDIR)\colordlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

colour.obj:     $(MSWDIR)\colour.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

combobox.obj:     $(MSWDIR)\combobox.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

control.obj:     $(MSWDIR)\control.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

curico.obj:     $(MSWDIR)\curico.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

cursor.obj:     $(MSWDIR)\cursor.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

data.obj:     $(MSWDIR)\data.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dataobj.obj:     $(OLEDIR)\dataobj.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dc.obj:     $(MSWDIR)\dc.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dcclient.obj:     $(MSWDIR)\dcclient.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dcmemory.obj:     $(MSWDIR)\dcmemory.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dcprint.obj:     $(MSWDIR)\dcprint.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dcscreen.obj:     $(MSWDIR)\dcscreen.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dde.obj:     $(MSWDIR)\dde.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dialog.obj:     $(MSWDIR)\dialog.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dialup.obj:     $(MSWDIR)\dialup.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dib.obj:     $(MSWDIR)\dib.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dibutils.obj:     $(MSWDIR)\dibutils.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dir.obj:     $(MSWDIR)\dir.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dirdlg.obj:     $(MSWDIR)\dirdlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dragimag.obj:     $(MSWDIR)\dragimag.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dropsrc.obj:     $(OLEDIR)\dropsrc.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

droptgt.obj:     $(OLEDIR)\droptgt.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

enhmeta.obj:     $(MSWDIR)\enhmeta.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

evtloop.obj:     $(MSWDIR)\evtloop.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fdrepdlg.obj:     $(MSWDIR)\fdrepdlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

filedlg.obj:     $(MSWDIR)\filedlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

font.obj:     $(MSWDIR)\font.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fontdlg.obj:     $(MSWDIR)\fontdlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fontenum.obj:     $(MSWDIR)\fontenum.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fontutil.obj:     $(MSWDIR)\fontutil.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

frame.obj:     $(MSWDIR)\frame.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gauge95.obj:     $(MSWDIR)\gauge95.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gaugemsw.obj:     $(MSWDIR)\gaugemsw.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gdiimage.obj:     $(MSWDIR)\gdiimage.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gdiobj.obj:     $(MSWDIR)\gdiobj.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

glcanvas.obj:     $(MSWDIR)\glcanvas.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gsocket.obj:     $(MSWDIR)\gsocket.c
  *$(CC) $(CPPFLAGS) $(IFLAGS) $<

gsockmsw.obj:     $(MSWDIR)\gsockmsw.c
  *$(CC) $(CPPFLAGS) $(IFLAGS) $<

helpbest.obj:     $(MSWDIR)\helpbest.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

helpchm.obj:     $(MSWDIR)\helpchm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

helpwin.obj:     $(MSWDIR)\helpwin.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

icon.obj:     $(MSWDIR)\icon.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imaglist.obj:     $(MSWDIR)\imaglist.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

iniconf.obj:     $(MSWDIR)\iniconf.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

joystick.obj:     $(MSWDIR)\joystick.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

listbox.obj:     $(MSWDIR)\listbox.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

listctrl.obj:     $(MSWDIR)\listctrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

main.obj:     $(MSWDIR)\main.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

mdi.obj:     $(MSWDIR)\mdi.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

menu.obj:     $(MSWDIR)\menu.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

menuitem.obj:     $(MSWDIR)\menuitem.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

metafile.obj:     $(MSWDIR)\metafile.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

mimetype.obj:     $(MSWDIR)\mimetype.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

minifram.obj:     $(MSWDIR)\minifram.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

msgdlg.obj:     $(MSWDIR)\msgdlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

mslu.obj:     $(MSWDIR)\mslu.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

nativdlg.obj:     $(MSWDIR)\nativdlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

notebook.obj:     $(MSWDIR)\notebook.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

oleutils.obj:     $(OLEDIR)\oleutils.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

ownerdrw.obj:     $(MSWDIR)\ownerdrw.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

palette.obj:     $(MSWDIR)\palette.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

pen.obj:     $(MSWDIR)\pen.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

penwin.obj:     $(MSWDIR)\penwin.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

printdlg.obj:     $(MSWDIR)\printdlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

printwin.obj:     $(MSWDIR)\printwin.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

radiobox.obj:     $(MSWDIR)\radiobox.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

radiobut.obj:     $(MSWDIR)\radiobut.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

regconf.obj:     $(MSWDIR)\regconf.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

region.obj:     $(MSWDIR)\region.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

registry.obj:     $(MSWDIR)\registry.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

scrolbar.obj:     $(MSWDIR)\scrolbar.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

settings.obj:     $(MSWDIR)\settings.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

slider95.obj:     $(MSWDIR)\slider95.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

slidrmsw.obj:     $(MSWDIR)\slidrmsw.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

snglinst.obj:     $(MSWDIR)\snglinst.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

spinbutt.obj:     $(MSWDIR)\spinbutt.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

spinctrl.obj:     $(MSWDIR)\spinctrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

statbmp.obj:     $(MSWDIR)\statbmp.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

statbox.obj:     $(MSWDIR)\statbox.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

statbr95.obj:     $(MSWDIR)\statbr95.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

statline.obj:     $(MSWDIR)\statline.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

stattext.obj:     $(MSWDIR)\stattext.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tabctrl.obj:     $(MSWDIR)\tabctrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

taskbar.obj:     $(MSWDIR)\taskbar.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tbar95.obj:     $(MSWDIR)\tbar95.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tbarmsw.obj:     $(MSWDIR)\tbarmsw.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

textctrl.obj:     $(MSWDIR)\textctrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tglbtn.obj:     $(MSWDIR)\tglbtn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

thread.obj:     $(MSWDIR)\thread.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

timer.obj:     $(MSWDIR)\timer.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tooltip.obj:     $(MSWDIR)\tooltip.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

toplevel.obj:     $(MSWDIR)\toplevel.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

treectrl.obj:     $(MSWDIR)\treectrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

utils.obj:     $(MSWDIR)\utils.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

utilsexc.obj:     $(MSWDIR)\utilsexc.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

uuid.obj:     $(OLEDIR)\uuid.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

volume.obj:     $(MSWDIR)\volume.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

wave.obj:     $(MSWDIR)\wave.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

window.obj:     $(MSWDIR)\window.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<



########################################################
# Common objects (always compiled)

appcmn.obj:     $(COMMDIR)\appcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

artprov.obj:     $(COMMDIR)\artprov.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

artstd.obj:     $(COMMDIR)\artstd.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

choiccmn.obj:     $(COMMDIR)\choiccmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

clipcmn.obj:     $(COMMDIR)\clipcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

clntdata.obj:     $(COMMDIR)\clntdata.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

cmdline.obj:     $(COMMDIR)\cmdline.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

cmdproc.obj:     $(COMMDIR)\cmdproc.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

cmndata.obj:     $(COMMDIR)\cmndata.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

config.obj:     $(COMMDIR)\config.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

containr.obj:     $(COMMDIR)\containr.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

cshelp.obj:     $(COMMDIR)\cshelp.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

ctrlcmn.obj:     $(COMMDIR)\ctrlcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

ctrlsub.obj:     $(COMMDIR)\ctrlsub.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

datetime.obj:     $(COMMDIR)\datetime.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

datstrm.obj:     $(COMMDIR)\datstrm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

db.obj:     $(COMMDIR)\db.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dbgrid.obj:     $(COMMDIR)\dbgrid.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dbtable.obj:     $(COMMDIR)\dbtable.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dcbase.obj:     $(COMMDIR)\dcbase.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dircmn.obj:     $(COMMDIR)\dircmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dlgcmn.obj:     $(COMMDIR)\dlgcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dndcmn.obj:     $(COMMDIR)\dndcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dobjcmn.obj:     $(COMMDIR)\dobjcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

docmdi.obj:     $(COMMDIR)\docmdi.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

docview.obj:     $(COMMDIR)\docview.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dseldlg.obj:     $(COMMDIR)\dseldlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dynarray.obj:     $(COMMDIR)\dynarray.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dynlib.obj:     $(COMMDIR)\dynlib.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dynload.obj:     $(COMMDIR)\dynload.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

effects.obj:     $(COMMDIR)\effects.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

encconv.obj:     $(COMMDIR)\encconv.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

event.obj:     $(COMMDIR)\event.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

extended.obj:     $(COMMDIR)\extended.c
  *$(CC) $(CPPFLAGS) $(IFLAGS) $<

fddlgcmn.obj:     $(COMMDIR)\fddlgcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

ffile.obj:     $(COMMDIR)\ffile.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

file.obj:     $(COMMDIR)\file.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fileconf.obj:     $(COMMDIR)\fileconf.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

filefn.obj:     $(COMMDIR)\filefn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

filename.obj:     $(COMMDIR)\filename.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

filesys.obj:     $(COMMDIR)\filesys.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fontcmn.obj:     $(COMMDIR)\fontcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fontmap.obj:     $(COMMDIR)\fontmap.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

framecmn.obj:     $(COMMDIR)\framecmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fs_inet.obj:     $(COMMDIR)\fs_inet.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fs_mem.obj:     $(COMMDIR)\fs_mem.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

fs_zip.obj:     $(COMMDIR)\fs_zip.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

ftp.obj:     $(COMMDIR)\ftp.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gaugecmn.obj:     $(COMMDIR)\gaugecmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gdicmn.obj:     $(COMMDIR)\gdicmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

geometry.obj:     $(COMMDIR)\geometry.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gifdecod.obj:     $(COMMDIR)\gifdecod.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

hash.obj:     $(COMMDIR)\hash.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

hashmap.obj:     $(COMMDIR)\hashmap.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

helpbase.obj:     $(COMMDIR)\helpbase.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

http.obj:     $(COMMDIR)\http.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

iconbndl.obj:     $(COMMDIR)\iconbndl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagall.obj:     $(COMMDIR)\imagall.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagbmp.obj:     $(COMMDIR)\imagbmp.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

image.obj:     $(COMMDIR)\image.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imaggif.obj:     $(COMMDIR)\imaggif.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagiff.obj:     $(COMMDIR)\imagiff.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagjpeg.obj:     $(COMMDIR)\imagjpeg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagpcx.obj:     $(COMMDIR)\imagpcx.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagpng.obj:     $(COMMDIR)\imagpng.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagpnm.obj:     $(COMMDIR)\imagpnm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagtiff.obj:     $(COMMDIR)\imagtiff.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

imagxpm.obj:     $(COMMDIR)\imagxpm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

intl.obj:     $(COMMDIR)\intl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

ipcbase.obj:     $(COMMDIR)\ipcbase.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

layout.obj:     $(COMMDIR)\layout.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

lboxcmn.obj:     $(COMMDIR)\lboxcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

list.obj:     $(COMMDIR)\list.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

log.obj:     $(COMMDIR)\log.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

longlong.obj:     $(COMMDIR)\longlong.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

matrix.obj:     $(COMMDIR)\matrix.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

memory.obj:     $(COMMDIR)\memory.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

menucmn.obj:     $(COMMDIR)\menucmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

mimecmn.obj:     $(COMMDIR)\mimecmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

module.obj:     $(COMMDIR)\module.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

mstream.obj:     $(COMMDIR)\mstream.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

nbkbase.obj:     $(COMMDIR)\nbkbase.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

object.obj:     $(COMMDIR)\object.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

odbc.obj:     $(COMMDIR)\odbc.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

paper.obj:     $(COMMDIR)\paper.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

popupcmn.obj:     $(COMMDIR)\popupcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

prntbase.obj:     $(COMMDIR)\prntbase.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

process.obj:     $(COMMDIR)\process.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

protocol.obj:     $(COMMDIR)\protocol.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

quantize.obj:     $(COMMDIR)\quantize.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

radiocmn.obj:     $(COMMDIR)\radiocmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

regex.obj:     $(COMMDIR)\regex.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

resource.obj:     $(COMMDIR)\resource.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

sckaddr.obj:     $(COMMDIR)\sckaddr.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

sckfile.obj:     $(COMMDIR)\sckfile.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

sckipc.obj:     $(COMMDIR)\sckipc.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

sckstrm.obj:     $(COMMDIR)\sckstrm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

sizer.obj:     $(COMMDIR)\sizer.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

socket.obj:     $(COMMDIR)\socket.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

statbar.obj:     $(COMMDIR)\statbar.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

strconv.obj:     $(COMMDIR)\strconv.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

stream.obj:     $(COMMDIR)\stream.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

string.obj:     $(COMMDIR)\string.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

sysopt.obj:     $(COMMDIR)\sysopt.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tbarbase.obj:     $(COMMDIR)\tbarbase.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

textbuf.obj:     $(COMMDIR)\textbuf.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

textcmn.obj:     $(COMMDIR)\textcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

textfile.obj:     $(COMMDIR)\textfile.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

timercmn.obj:     $(COMMDIR)\timercmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tokenzr.obj:     $(COMMDIR)\tokenzr.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

toplvcmn.obj:     $(COMMDIR)\toplvcmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

treebase.obj:     $(COMMDIR)\treebase.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

txtstrm.obj:     $(COMMDIR)\txtstrm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

unzip.obj:     $(COMMDIR)\unzip.c
  *$(CC) $(CPPFLAGS) $(IFLAGS) $<

url.obj:     $(COMMDIR)\url.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

utilscmn.obj:     $(COMMDIR)\utilscmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

valgen.obj:     $(COMMDIR)\valgen.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

validate.obj:     $(COMMDIR)\validate.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

valtext.obj:     $(COMMDIR)\valtext.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

variant.obj:     $(COMMDIR)\variant.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

wfstream.obj:     $(COMMDIR)\wfstream.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

wincmn.obj:     $(COMMDIR)\wincmn.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

wxchar.obj:     $(COMMDIR)\wxchar.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

wxexpr.obj:     $(COMMDIR)\wxexpr.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

xpmdecod.obj:     $(COMMDIR)\xpmdecod.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

zipstrm.obj:     $(COMMDIR)\zipstrm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

zstream.obj:     $(COMMDIR)\zstream.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<



y_tab.obj:     $(COMMDIR)\y_tab.c $(COMMDIR)\lex_yy.c
  *$(CC) $(CPPFLAGS) $(IFLAGS) -DUSE_DEFINE $(COMMDIR)\y_tab.c

#  *$(CC) $(CPPFLAGS) $(IFLAGS) -DUSE_DEFINE -DYY_USE_PROTOS $(COMMDIR)\y_tab.c

$(COMMDIR)\y_tab.c:     $(COMMDIR)\dosyacc.c
        copy $(COMMDIR)\dosyacc.c $(COMMDIR)\y_tab.c

$(COMMDIR)\lex_yy.c:    $(COMMDIR)\doslex.c
    copy $(COMMDIR)\doslex.c $(COMMDIR)\lex_yy.c

########################################################
# Generic objects (not always compiled, depending on
# whether platforms have native implementations)

busyinfo.obj:     $(GENDIR)\busyinfo.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

calctrl.obj:     $(GENDIR)\calctrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

choicdgg.obj:     $(GENDIR)\choicdgg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dcbuffer.obj:     $(GENDIR)\dcbuffer.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dcpsg.obj:     $(GENDIR)\dcpsg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dirctrlg.obj:     $(GENDIR)\dirctrlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

dragimgg.obj:     $(GENDIR)\dragimgg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

grid.obj:     $(GENDIR)\grid.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gridctrl.obj:     $(GENDIR)\gridctrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

gridsel.obj:     $(GENDIR)\gridsel.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

laywin.obj:     $(GENDIR)\laywin.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

logg.obj:     $(GENDIR)\logg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

numdlgg.obj:     $(GENDIR)\numdlgg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

panelg.obj:     $(GENDIR)\panelg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

progdlgg.obj:     $(GENDIR)\progdlgg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

prop.obj:     $(GENDIR)\prop.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

propform.obj:     $(GENDIR)\propform.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

proplist.obj:     $(GENDIR)\proplist.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

sashwin.obj:     $(GENDIR)\sashwin.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

scrlwing.obj:     $(GENDIR)\scrlwing.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

spinctlg.obj:     $(GENDIR)\spinctlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

splash.obj:     $(GENDIR)\splash.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

splitter.obj:     $(GENDIR)\splitter.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

statusbr.obj:     $(GENDIR)\statusbr.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tbarsmpl.obj:     $(GENDIR)\tbarsmpl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

textdlgg.obj:     $(GENDIR)\textdlgg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tipdlg.obj:     $(GENDIR)\tipdlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

tipwin.obj:     $(GENDIR)\tipwin.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

treectlg.obj:     $(GENDIR)\treectlg.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

treelay.obj:     $(GENDIR)\treelay.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

wizard.obj:     $(GENDIR)\wizard.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<




########################################################
# HTML objects (always compiled)

helpctrl.obj:     $(HTMLDIR)\helpctrl.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

helpdata.obj:     $(HTMLDIR)\helpdata.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

helpfrm.obj:     $(HTMLDIR)\helpfrm.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

htmlcell.obj:     $(HTMLDIR)\htmlcell.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

htmlfilt.obj:     $(HTMLDIR)\htmlfilt.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

htmlpars.obj:     $(HTMLDIR)\htmlpars.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

htmltag.obj:     $(HTMLDIR)\htmltag.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

htmlwin.obj:     $(HTMLDIR)\htmlwin.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

htmprint.obj:     $(HTMLDIR)\htmprint.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_dflist.obj:     $(HTMLDIR)\m_dflist.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_fonts.obj:     $(HTMLDIR)\m_fonts.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_hline.obj:     $(HTMLDIR)\m_hline.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_image.obj:     $(HTMLDIR)\m_image.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_layout.obj:     $(HTMLDIR)\m_layout.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_links.obj:     $(HTMLDIR)\m_links.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_list.obj:     $(HTMLDIR)\m_list.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_meta.obj:     $(HTMLDIR)\m_meta.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_pre.obj:     $(HTMLDIR)\m_pre.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_style.obj:     $(HTMLDIR)\m_style.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

m_tables.obj:     $(HTMLDIR)\m_tables.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<

winpars.obj:     $(HTMLDIR)\winpars.cpp
  *$(CCC) $(CPPFLAGS) $(IFLAGS) $<



png:   .SYMBOLIC
    cd $(WXDIR)\src\png
    wmake -f makefile.wat all
    cd $(WXDIR)\src\msw

clean_png:   .SYMBOLIC
    cd $(WXDIR)\src\png
    wmake -f makefile.wat clean
    cd $(WXDIR)\src\msw

zlib:   .SYMBOLIC
    cd $(WXDIR)\src\zlib
    wmake -f makefile.wat all
    cd $(WXDIR)\src\msw

clean_zlib:   .SYMBOLIC
    cd $(WXDIR)\src\zlib
    wmake -f makefile.wat clean
    cd $(WXDIR)\src\msw

jpeg:    .SYMBOLIC
    cd $(WXDIR)\src\jpeg
    wmake -f makefile.wat all
    cd $(WXDIR)\src\msw

clean_jpeg:   .SYMBOLIC
    cd $(WXDIR)\src\jpeg
    wmake -f makefile.wat clean
    cd $(WXDIR)\src\msw

tiff:    .SYMBOLIC
    cd $(WXDIR)\src\tiff
    wmake -f makefile.wat all
    cd $(WXDIR)\src\msw

clean_tiff:   .SYMBOLIC
    cd $(WXDIR)\src\tiff
    wmake -f makefile.wat clean
    cd $(WXDIR)\src\msw

regex:    .SYMBOLIC
    cd $(WXDIR)\src\regex
    wmake -f makefile.wat all
    cd $(WXDIR)\src\msw

clean_regex:   .SYMBOLIC
    cd $(WXDIR)\src\regex
    wmake -f makefile.wat clean
    cd $(WXDIR)\src\msw

MFTYPE=wat
self : .SYMBOLIC $(WXDIR)\distrib\msw\tmake\filelist.txt $(WXDIR)\distrib\msw\tmake\$(MFTYPE).t
	cd $(WXDIR)\distrib\msw\tmake
	tmake -t $(MFTYPE) wxwin.pro -o makefile.$(MFTYPE)
	copy makefile.$(MFTYPE) $(WXDIR)\src\msw
