package com.example.sendlocation;

import com.firebase.client.Firebase;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;
import android.location.Location;
import android.location.LocationManager;
import android.location.LocationListener;


public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		LocationManager mlocManager = (LocationManager)getSystemService(Context.LOCATION_SERVICE);
		LocationListener mlocListener = new MyLocationListener();
		mlocManager.requestLocationUpdates( LocationManager.NETWORK_PROVIDER, 0, 0, mlocListener);
		mlocManager.requestLocationUpdates( LocationManager.GPS_PROVIDER, 0, 0, mlocListener);
		
		
		buttonListener();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	private void buttonListener(){
    	Button button = (Button) findViewById(R.id.stop);
    	 
		button.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View arg0) {
				Installation.end();
				finish();
			}
		});
    }
	
	public class MyLocationListener implements LocationListener
	{
	String UUID = Installation.id(getApplicationContext());
		//Este es el número único generado por cada android OS
	Firebase firebaseRef = new Firebase("https://blazing-fire-9075.firebaseio.com/Device-"+UUID);
	
	@Override
	public void onLocationChanged(Location loc)
	{	
	  	/*String Text = "Mi ubicación actual es: " + "Latitud = " + loc.getLatitude() +
	  	" Longitud = " + loc.getLongitude();*/

		Toast.makeText(getApplicationContext(),"Actualizando ubicación",Toast.LENGTH_SHORT).show();
		
			
		String location = loc.getLatitude() + " " + loc.getLongitude();
		//firebaseRef.setValue(location);
		firebaseRef.child("GpsID").setValue(UUID);
		firebaseRef.child("Location").setValue(location);
		
		
		//new MyObject(UUID,location)
	}

	@Override
	public void onProviderDisabled(String provider)
	{
		/*
		if(provider==LocationManager.NETWORK_PROVIDER){
			TextView t = (TextView)findViewById(R.id.textView1);
			t.setText("Favor active \nel WIFI o el GPS para \npoder continuar");
			Toast.makeText( getApplicationContext(), "WIFI Desactivado",Toast.LENGTH_SHORT ).show();
		}
		if(provider==LocationManager.GPS_PROVIDER){
			Toast.makeText( getApplicationContext(), "GPS Desactivado",Toast.LENGTH_SHORT ).show();
		}*/
	
	}

	@Override
	public void onProviderEnabled(String provider)
	{
		/*if(provider==LocationManager.NETWORK_PROVIDER){
			TextView t = (TextView)findViewById(R.id.textView1);
			t.setText("Enviando \nubicación a \nServidor");
			Toast.makeText( getApplicationContext(),"WIFI Activado",Toast.LENGTH_SHORT).show();
		}
		if(provider==LocationManager.GPS_PROVIDER){
			Toast.makeText( getApplicationContext(), "GPS Activado",Toast.LENGTH_SHORT ).show();
		}*/
	}

	@Override
	public void onStatusChanged(String provider, int status, Bundle extras)
	{
	}

	} //End mylocationlistener
	
	public class MyObject{
		private String identify;
		private String location;
		
		public MyObject(String id, String loc){
			this.identify = id;
			this.location = loc;
		}
		
		public String GetId(){
			return identify;
		}
		
		public String GetLoc(){
			return location;
		}
		
	}
}