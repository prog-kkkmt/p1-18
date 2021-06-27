package com.example.timer;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.InputType;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

public class MainActivity extends Activity {

    private EditText hours;
    private EditText minutes;
    private EditText seconds;

    private TextView hoursText;
    private TextView minutesText;
    private TextView secondsText;

    private Button start;
    private Button cancel;
    private Button mode;

    private MediaPlayer sound;

    private boolean running = false;

    private TimeHelper timeHelper;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        hours = findViewById(R.id.hours);
        minutes = findViewById(R.id.minutes);
        seconds = findViewById(R.id.seconds);

        hoursText = findViewById(R.id.hours_text);
        minutesText = findViewById(R.id.minutes_text);
        secondsText = findViewById(R.id.seconds_text);

        start = findViewById(R.id.start);
        cancel = findViewById(R.id.cancel);
        mode = findViewById(R.id.mode);

        sound = MediaPlayer.create(this, R.raw.never_gonna_give_you_up);

        timeHelper = new TimeHelper(hoursText, minutesText, secondsText);

        runTimer();
    }

    private void runTimer() {
        final Handler handler = new Handler();

        handler.post(new Runnable() {
            @SuppressLint("DefaultLocale")
            @Override
            public void run() {
                handler.postDelayed(this, 1000);
                boolean isEnd;
                if (running) {
                    isEnd = timeHelper.minusSecond();
                    if (isEnd) {
                        stopTimer();
                        soundPlay();
                    }
                }
            }
        });
    }

    private void stopTimer() {
        running = false;
        cancel.setVisibility(View.GONE);
        mode.setVisibility(View.GONE);
        start.setVisibility(View.VISIBLE);

        // Даем возможность редактирования пользователю
        EditTextVisible(hours, hoursText);
        EditTextVisible(minutes, minutesText);
        EditTextVisible(seconds, secondsText);
    }

    private void soundPlay() {
        sound.start();
    }

    public void onClickStart(View view) {
        boolean isHoursZero = isZero(hours);
        boolean isMinutesZero = isZero(minutes);
        boolean isSecondsZero = isZero(seconds);
        System.out.println("[" + isHoursZero + " " + isMinutesZero + " " + isSecondsZero + "]");

        if (isHoursZero || isMinutesZero || isSecondsZero) {
            running = true;
            start.setVisibility(View.GONE);
            cancel.setVisibility(View.VISIBLE);
            mode.setVisibility(View.VISIBLE);
            mode.setText("Pause");

            // Убираем возможность изменять
            TextViewVisible(hours, hoursText);
            TextViewVisible(minutes, minutesText);
            TextViewVisible(seconds, secondsText);

            // Получаем введенные данные
            int hoursValue = getInt(hours);
            int minutesValue = getInt(minutes);
            int secondsValue = getInt(seconds);

            // Приводим в правильный вид
            if (secondsValue > 59) {
                minutesValue += secondsValue / 60;
                secondsValue %= 60;
            }
            if (minutesValue > 59) {
                hoursValue += minutesValue / 60;
                minutesValue %= 60;
            }

            // Устанавливаем TextView значения
            hoursText.setText(String.valueOf(hoursValue));
            minutesText.setText(String.valueOf(minutesValue));
            secondsText.setText(String.valueOf(secondsValue));
        }
    }

    public void onClickCancel(View view) {
        stopTimer();
    }

    public void onClickMode(View view) {
        if (!running) {
            running = true;
            mode.setText("Pause");
        } else {
            running = false;
            mode.setText("Resume");
        }
    }

    private void TextViewVisible(EditText et, TextView tv) {
        et.setVisibility(View.GONE);
        tv.setVisibility(View.VISIBLE);
    }

    private void EditTextVisible(EditText et, TextView tv) {
        et.setVisibility(View.VISIBLE);
        tv.setVisibility(View.GONE);
    }

    private int getInt(EditText et) {
        String text = et.getText().toString();
        if (text.equals("")) {
            return 0;
        } else if (text.length() == 2 && text.charAt(0) == '0') {
            return (int)text.charAt(1);
        }
        return Integer.parseInt(text);
    }

    private boolean isZero(EditText et) {
        boolean state = true;
        if (et.getText().length() == 0
                || et.getText().equals("00")
                || et.getText().equals("0")){
            state = false;
        }
        return state;
    }
}


class TimeHelper {

    final private TextView hoursText;
    final private TextView minutesText;
    final private TextView secondsText;

    public TimeHelper(TextView hoursText, TextView minutesText, TextView secondsText) {
        this.hoursText = hoursText;
        this.minutesText = minutesText;
        this.secondsText = secondsText;
    }

    public boolean minusSecond() {
        boolean isEnd = false;
        int second = Integer.parseInt(secondsText.getText().toString());
        if (second == 0) {
            isEnd = minusMinute();
            secondsText.setText("59");
        } else {
            secondsText.setText(String.valueOf(second - 1));
        }
        return isEnd;
    }

    public boolean minusMinute() {
        boolean isEnd = false;
        int minute = Integer.parseInt(minutesText.getText().toString());
        if (minute == 0) {
            isEnd = minusHour();
            minutesText.setText("59");
        } else {
            minutesText.setText(String.valueOf(minute - 1));
        }
        return isEnd;
    }

    public boolean minusHour() {
        boolean isEnd = false;
        int hour = Integer.parseInt(hoursText.getText().toString());
        if (hour == 0) {
            isEnd = true;
        } else {
            hoursText.setText(String.valueOf(hour - 1));
        }
        return isEnd;
    }
}