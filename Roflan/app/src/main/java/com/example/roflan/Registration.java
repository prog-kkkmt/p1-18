package com.example.roflan;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class Registration extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registration);
    }

    public void onClick5(View view){
        Intent intent = new Intent(this, Autorisation.class);
        startActivity(intent);
    }

    public void onClick6(View view){
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);
    }
}