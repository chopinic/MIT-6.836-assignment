# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.bin2c.Debug:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/bin2c


PostBuild.nanogui.Debug:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/libnanogui.a


PostBuild.bin2c.Release:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/bin2c


PostBuild.nanogui.Release:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/libnanogui.a


PostBuild.bin2c.MinSizeRel:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/bin2c


PostBuild.nanogui.MinSizeRel:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/libnanogui.a


PostBuild.bin2c.RelWithDebInfo:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/bin2c


PostBuild.nanogui.RelWithDebInfo:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/libnanogui.a




# For each target create a dummy ruleso the target does not have to exist
