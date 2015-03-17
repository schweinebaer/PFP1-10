import java.awt.*;

public class ClockHand extends java.applet.Applet implements Runnable {
	Thread clockHand = null;
	int secHand = 3, minHand, hourHand, minStart, minCheck, delay = 30;
	String theDate = "";
	Panel pan, pan2;
	boolean start;

	public void start() {
		getDatesAndTimes();
		setLayout(new BorderLayout());
		pan = new Panel();
		pan2 = new Panel();
		setBackground(new Color(0, 0, 120));
		setForeground(Color.gray);
		Label date = new Label(theDate, Label.CENTER);
		pan2.add(date);
		add("Center", pan);
		add("South", pan2);

		if (clockHand == null) {
			clockHand = new Thread(this, "ClockHand");
			clockHand.start();
		}
	}

	public void run() {
		setUp();
		Thread go = Thread.currentThread();

		while (!start) {

			try {
				Thread.sleep(delay);
				secHand += 6;
				faceUp();
			} catch (InterruptedException e) {
			}
		}

		while (start) {

			try {
				Thread.sleep(delay);
				secHand += 6;
				clock();
			} catch (InterruptedException e) {
			}
			if ((secHand - 39) % 360 == 0) {
				minCheck++;
				if (minCheck % 2 == 0)
					hourHand -= 5;
				else
					hourHand -= 6;
			} else
				minHand -= 6;
		}
	}

	/**
	 ** Basic setup method so that the GUI paint elements do not need to be
	 * constantly redrawn. The method call only occurs once.
	 */

	public void setUp() {
		Graphics g = pan.getGraphics();
		g.setColor(Color.gray);
		g.drawRect(1, 1, 197, 197);
		g.drawRect(3, 3, 193, 195);
		g.setColor(new Color(160, 150, 170));
		g.drawString("1", 138, 30);
		g.drawString("2", 170, 60);
		g.drawString("3", 180, 105);
		g.drawString("4", 168, 148);
		g.drawString("5", 139, 180);
		g.drawString("6", 96, 190);
		g.drawString("7", 52, 180);
		g.drawString("8", 23, 145);
		g.drawString("9", 14, 105);
		g.drawString("10", 18, 60);
		g.drawString("11", 51, 30);
		g.drawString("12", 93, 20);
		g.setColor(new Color(30, 30, 150));
		g.fillOval(25, 25, 150, 149);
		g = pan2.getGraphics();
		g.drawRect(1, 1, 197, 30);
		g.drawRect(3, 3, 193, 26);
	}

	/**
	 ** Draws the intervals for the clock face
	 */

	public void faceUp() {
		Graphics g = pan.getGraphics();
		Graphics2D g2 = (Graphics2D) g;
		g.setColor(Color.gray);
		g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
				RenderingHints.VALUE_ANTIALIAS_ON);
		g2.rotate(Math.toRadians(secHand), 100, 100);
		g2.drawLine(100, 100, 49, 49);

		if (secHand > 360) {
			g.drawOval(25, 25, 150, 150);
			g.drawOval(29, 29, 142, 142);
			delay = 1000;
			secHand = 45;
			start = true;
		}
	}

	/**
	 ** This is the thread method call to work the hands of the clock
	 */

	public void clock() {
		Graphics g = pan.getGraphics();
		Graphics2D g2 = (Graphics2D) g;
		g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
				RenderingHints.VALUE_ANTIALIAS_ON);
		g2.setColor(new Color(0, 0, 90));
		g2.fillOval(30, 30, 140, 140);
		g2.setColor(Color.gray);
		g2.drawOval(98, 98, 4, 4);
		int xX = 100;
		int yY = 100;
		g2.rotate(Math.toRadians(secHand), xX, yY);
		g2.drawLine(100, 100, 54, 55);
		g2.rotate(Math.toRadians(minHand), xX, yY);
		g2.drawLine(100, 100, 55, 58);
		g2.rotate(Math.toRadians(hourHand), xX, yY);
		g2.drawLine(100, 100, 65, 65);
	}

	/**
	 ** Date and time data in a seperate method call from start()
	 */

	public void getDatesAndTimes() {
		java.util.Date date = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
				"EEEE dd MMMM yyyy");
		theDate = sdf.format(date).toString();
		java.util.Calendar cal = java.util.Calendar.getInstance();
		hourHand = cal.get(java.util.Calendar.HOUR);
		minHand = cal.get(java.util.Calendar.MINUTE);
		hourHand = hourHand * 30 + ((minHand / 2) - 6);
		minStart = minHand = (minHand * 6) - 5;
		hourHand -= minStart;
	}
}
