# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.a2.Debug:
PostBuild.glfw.Debug: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Debug/a2
PostBuild.nanogui.Debug: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Debug/a2
PostBuild.vecmath.Debug: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Debug/a2
PostBuild.glfw.Debug: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Debug/a2
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Debug/a2:\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Debug/libglfw3.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/libnanogui.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Debug/libvecmath.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Debug/libglfw3.a
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Debug/a2


PostBuild.bin2c.Debug:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/bin2c


PostBuild.glfw.Debug:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Debug/libglfw3.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Debug/libglfw3.a


PostBuild.nanogui.Debug:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/libnanogui.a


PostBuild.vecmath.Debug:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Debug/libvecmath.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Debug/libvecmath.a


PostBuild.a2.Release:
PostBuild.glfw.Release: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Release/a2
PostBuild.nanogui.Release: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Release/a2
PostBuild.vecmath.Release: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Release/a2
PostBuild.glfw.Release: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Release/a2
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Release/a2:\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Release/libglfw3.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/libnanogui.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Release/libvecmath.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Release/libglfw3.a
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/Release/a2


PostBuild.bin2c.Release:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/bin2c


PostBuild.glfw.Release:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Release/libglfw3.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Release/libglfw3.a


PostBuild.nanogui.Release:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/libnanogui.a


PostBuild.vecmath.Release:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Release/libvecmath.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Release/libvecmath.a


PostBuild.a2.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/MinSizeRel/a2
PostBuild.nanogui.MinSizeRel: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/MinSizeRel/a2
PostBuild.vecmath.MinSizeRel: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/MinSizeRel/a2
PostBuild.glfw.MinSizeRel: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/MinSizeRel/a2
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/MinSizeRel/a2:\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/MinSizeRel/libglfw3.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/libnanogui.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/MinSizeRel/libvecmath.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/MinSizeRel/a2


PostBuild.bin2c.MinSizeRel:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/bin2c


PostBuild.glfw.MinSizeRel:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/MinSizeRel/libglfw3.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/MinSizeRel/libglfw3.a


PostBuild.nanogui.MinSizeRel:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/libnanogui.a


PostBuild.vecmath.MinSizeRel:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/MinSizeRel/libvecmath.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/MinSizeRel/libvecmath.a


PostBuild.a2.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/RelWithDebInfo/a2
PostBuild.nanogui.RelWithDebInfo: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/RelWithDebInfo/a2
PostBuild.vecmath.RelWithDebInfo: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/RelWithDebInfo/a2
PostBuild.glfw.RelWithDebInfo: /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/RelWithDebInfo/a2
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/RelWithDebInfo/a2:\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/RelWithDebInfo/libglfw3.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/libnanogui.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/RelWithDebInfo/libvecmath.a\
	/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/RelWithDebInfo/a2


PostBuild.bin2c.RelWithDebInfo:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/bin2c:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/bin2c


PostBuild.glfw.RelWithDebInfo:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/RelWithDebInfo/libglfw3.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/RelWithDebInfo/libglfw3.a


PostBuild.nanogui.RelWithDebInfo:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/libnanogui.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/libnanogui.a


PostBuild.vecmath.RelWithDebInfo:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/RelWithDebInfo/libvecmath.a:
	/bin/rm -f /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/RelWithDebInfo/libvecmath.a




# For each target create a dummy ruleso the target does not have to exist
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Debug/libglfw3.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/MinSizeRel/libglfw3.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/RelWithDebInfo/libglfw3.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/glfw/src/Release/libglfw3.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Debug/libnanogui.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/MinSizeRel/libnanogui.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/RelWithDebInfo/libnanogui.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/3rd_party/nanogui/Release/libnanogui.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Debug/libvecmath.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/MinSizeRel/libvecmath.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/RelWithDebInfo/libvecmath.a:
/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn2/starter2/vecmath/Release/libvecmath.a:
