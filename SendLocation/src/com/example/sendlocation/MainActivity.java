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
				finish();
			}
		});
    }
	
	public class MyLocationListener implements LocationListener
	{
	Firebase firebaseRef = new Firebase("https://blazing-fire-9075.firebaseio.com/");
	@Override
	public void onLocationChanged(Location loc)
	{
	loc.getLatitude();
	loc.getLongitude();

	/*String Text = "My current location is: " + "Latitud = " + loc.getLatitude() +
	"Longitud = " + loc.getLongitude();

	Toast.makeText(getApplicationContext(),Text,Toast.LENGTH_SHORT).show();*/
	firebaseRef.setValue("Lat = " + loc.getLatitude() +
						 " Long = " + loc.getLongitude()
	);	
	}

	@Override
	public void onProviderDisabled(String provider)
	{
	Toast.makeText( getApplicationContext(), "Gps Desactivado",Toast.LENGTH_SHORT ).show();
	}

	@Override
	public void onProviderEnabled(String provider)
	{
	Toast.makeText( getApplicationContext(),"Gps Activado",Toast.LENGTH_SHORT).show();
	}

	@Override
	public void onStatusChanged(String provider, int status, Bundle extras)
	{
	}

	} //End mylocationlistener
}
