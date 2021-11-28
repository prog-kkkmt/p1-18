package com.example.roflan;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class Film_list extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_film_list);
    }

    public void onClick7(View view){
        Intent intent = new Intent(this, Autorisation.class);
        startActivity(intent);
    }
}