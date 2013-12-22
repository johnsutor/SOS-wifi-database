package com.tornadoprotection;

import java.util.Date;

/**
 *
 * @author Johnsutor
 */
public class EventWriter {

    static java.io.RandomAccessFile file = null;

    public synchronized static void process(String lat, String lon, String pressure, String temp, String ID) {
        try {
            if (file == null) {
                Date d = new Date();
                String filename = "Sensor-" + d.getYear() + "-" + d.getMonth()  + "-" + d.getDay() + "-" + d.getHours() + ".txt";
                
                java.io.File f = new java.io.File("c:\\data\\" + filename);
                file = new java.io.RandomAccessFile(f, "rw");
                file.seek(f.length());

                //file.close();
            }
            file.writeBytes(pressure + "\t" + lat + "\t" + lon + "\t" + temp + "\r\n");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}