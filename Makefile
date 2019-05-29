export LD_LIBRARY_PATH="/usr/local/lib"


HEADERS:= -I /home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3 -I /home/gleb/Desktop/SDL2-2.0.9/include
SDL_HEADERS:=/home/gleb/Desktop/SDL2-2.0.9/include/


#LIBS:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavcodec/;/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavformat/
#LIBS:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavformat/;/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavcodec/
AV_FORMAT_LIB:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavformat
AV_CODEC_LIB:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavcodec
AV_UTIL_LIB:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavutil
AV_SWSCALE_LIB:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libswscale
AV_SWRESAMPLE_LIB:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libswresample
#LIBS:=$(AV_FORMAT_LIB) $(AV_CODEC_LIB)

#LIBS:=/home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavcodec /home/gleb/Desktop/ffmpeg_tutorial/ffmpeg-4.1.3/libavformat
ex02:
#	gcc -o ex01 tutorial01.c -I $(HEADERS) -L $(AV_FORMAT_LIB)  -L $(AV_CODEC_LIB) -L $(AV_UTIL_LIB) -L $(AV_SWSCALE_LIB) -L $(AV_SWRESAMPLE_LIB) -lavformat -lavcodec -lavutil -lswscale -lz -lm -lpthread -lswresample
	gcc -o ex02 tutorial02.c $(HEADERS) -L $(AV_FORMAT_LIB)  -L $(AV_CODEC_LIB) -L $(AV_UTIL_LIB) -L $(AV_SWSCALE_LIB) -L $(AV_SWRESAMPLE_LIB) \
	-lavformat -lavcodec -lavutil -lswscale -lz -lm -lpthread -lswresample \
	-L /usr/local/lib -lSDL2 `sdl-config --cflags --libs`

#	-L /home/gleb/Desktop/SDL2-2.0.9/./build/.libs/ -lSDL2
#`sdl-config --cflags --libs`
	
	
#So... WHAT IS FUCKING -lz -lm -lpthread -lswresample and why I cant compile without him.
# -lz - это zlib, http://zlib.net/
#-lm - это математическая библиотека, которую вы разработали (реализация определена AFAIK)
