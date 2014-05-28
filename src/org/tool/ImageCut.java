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
     *  ���ź�ü�ͼƬ����
     * @param srcImageFile Դ�ļ�
     * @param x  x����
     * @param y  y����
     * @param destWidth �������ɵ�ͼƬ��
     * @param destHeight �������ɵ�ͼƬ��
     * @param finalWidth  ���ſ��
     * @param finalHeight  ���Ÿ߶�
     */
	 public static void abscut(File srcImageFile, int x, int y, int destWidth,
             int destHeight,int finalWidth,int finalHeight) {
		try {
			Image img;
			ImageFilter cropFilter;
			// ��ȡԴͼ��
			
			BufferedImage bi = ImageIO.read(srcImageFile);
			int srcWidth = bi.getWidth(); // Դͼ���
			int srcHeight = bi.getHeight(); // Դͼ�߶�
			
			if (srcWidth >= destWidth && srcHeight >= destHeight) {
			Image image = bi.getScaledInstance(finalWidth, finalHeight,Image.SCALE_AREA_AVERAGING  );//��ȡ���ź��ͼƬ��С
			cropFilter = new CropImageFilter(x, y, destWidth, destHeight);
			img = Toolkit.getDefaultToolkit().createImage(
			       new FilteredImageSource(image.getSource(), cropFilter));
			BufferedImage tag = new BufferedImage(destWidth, destHeight,
			       BufferedImage.TYPE_INT_RGB);
			Graphics g = tag.getGraphics();
			g.drawImage(img, 0, 0, null); // ���ƽ�ȡ���ͼ
			g.dispose();
			// ���Ϊ�ļ�
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
			// ��ȡԴͼ��
			BufferedImage bi = ImageIO.read(srcImageFile);
			int srcWidth = bi.getWidth(); // Դͼ���
			int srcHeight = bi.getHeight(); // Դͼ�߶�
			
			int tran_x=(x*srcWidth/finalWidth);
			int tran_y=(y*srcHeight/finalHeight);
			int tran_destW=(destWidth*srcWidth/finalWidth);
			int tran_destH=(destHeight*srcHeight/finalHeight);
			System.out.println(x+"|"+y+"|"+destWidth+"|"+destHeight+"|"+srcWidth+"|"+srcHeight+"|"+tran_x+"|"+tran_y+"|"+tran_destW+"|"+tran_destH);
			if (srcWidth >= destWidth && srcHeight >= destHeight) {
			//Image image = bi.getScaledInstance(srcWidth, srcHeight,Image.SCALE_AREA_AVERAGING  );//��ȡ���ź��ͼƬ��С
			cropFilter = new CropImageFilter(tran_x,tran_y,tran_destW ,tran_destH);
			img = Toolkit.getDefaultToolkit().createImage(
			       new FilteredImageSource(bi.getSource(), cropFilter));
			BufferedImage tag = new BufferedImage(tran_destW, tran_destH,
			       BufferedImage.TYPE_INT_RGB);
			Graphics g = tag.getGraphics();
			g.drawImage(img, 0, 0, null); // ���ƽ�ȡ���ͼ
			g.dispose();
			// ���Ϊ�ļ�
			ImageIO.write(tag, "JPEG", srcImageFile);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
