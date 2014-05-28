package org.tool;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.io.File;

import javax.imageio.ImageIO;

public class ImageCut {
	/**
     *  缩放后裁剪图片方法
     * @param srcImageFile 源文件
     * @param x  x坐标
     * @param y  y坐标
     * @param destWidth 最终生成的图片宽
     * @param destHeight 最终生成的图片高
     * @param finalWidth  缩放宽度
     * @param finalHeight  缩放高度
     */
	 public static void abscut(File srcImageFile, int x, int y, int destWidth,
             int destHeight,int finalWidth,int finalHeight) {
		try {
			Image img;
			ImageFilter cropFilter;
			// 读取源图像
			
			BufferedImage bi = ImageIO.read(srcImageFile);
			int srcWidth = bi.getWidth(); // 源图宽度
			int srcHeight = bi.getHeight(); // 源图高度
			
			if (srcWidth >= destWidth && srcHeight >= destHeight) {
			Image image = bi.getScaledInstance(finalWidth, finalHeight,Image.SCALE_AREA_AVERAGING  );//获取缩放后的图片大小
			cropFilter = new CropImageFilter(x, y, destWidth, destHeight);
			img = Toolkit.getDefaultToolkit().createImage(
			       new FilteredImageSource(image.getSource(), cropFilter));
			BufferedImage tag = new BufferedImage(destWidth, destHeight,
			       BufferedImage.TYPE_INT_RGB);
			Graphics g = tag.getGraphics();
			g.drawImage(img, 0, 0, null); // 绘制截取后的图
			g.dispose();
			// 输出为文件
			ImageIO.write(tag, "JPEG", srcImageFile);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	 public static void imagecut(File srcImageFile, int x, int y, int destWidth,
             int destHeight,int finalWidth,int finalHeight) {
		try {
			Image img;
			ImageFilter cropFilter;
			// 读取源图像
			BufferedImage bi = ImageIO.read(srcImageFile);
			int srcWidth = bi.getWidth(); // 源图宽度
			int srcHeight = bi.getHeight(); // 源图高度
			
			int tran_x=(x*srcWidth/finalWidth);
			int tran_y=(y*srcHeight/finalHeight);
			int tran_destW=(destWidth*srcWidth/finalWidth);
			int tran_destH=(destHeight*srcHeight/finalHeight);
			System.out.println(x+"|"+y+"|"+destWidth+"|"+destHeight+"|"+srcWidth+"|"+srcHeight+"|"+tran_x+"|"+tran_y+"|"+tran_destW+"|"+tran_destH);
			if (srcWidth >= destWidth && srcHeight >= destHeight) {
			//Image image = bi.getScaledInstance(srcWidth, srcHeight,Image.SCALE_AREA_AVERAGING  );//获取缩放后的图片大小
			cropFilter = new CropImageFilter(tran_x,tran_y,tran_destW ,tran_destH);
			img = Toolkit.getDefaultToolkit().createImage(
			       new FilteredImageSource(bi.getSource(), cropFilter));
			BufferedImage tag = new BufferedImage(tran_destW, tran_destH,
			       BufferedImage.TYPE_INT_RGB);
			Graphics g = tag.getGraphics();
			g.drawImage(img, 0, 0, null); // 绘制截取后的图
			g.dispose();
			// 输出为文件
			ImageIO.write(tag, "JPEG", srcImageFile);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
