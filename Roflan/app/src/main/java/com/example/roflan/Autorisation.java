package com.example.roflan;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class Autorisation extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_autorisation);
    }

    public void onClick3(View view){
        Intent intent = new Intent(this, Film_list.class);
        startActivity(intent);
    }

    public void onClick4(View view){
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);
    }
}