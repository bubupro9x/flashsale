package com.example.apple.testfunflutter;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import java.util.ArrayList;
import java.util.List;

import io.flutter.facade.Flutter;

public class MainActivity extends AppCompatActivity {
    private RecyclerView mRecyclerView;
    private RecyclerView.Adapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;
    ArrayList<View> listview = new ArrayList<>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        View flutterView = Flutter.createView(
                this,
                getLifecycle(),
                "pc3"
        );

//        ViewGroup.LayoutParams layout = new ViewGroup.LayoutParams(1100, 600);
//        flutterView.setLayoutParams(layout);


        listview.add(Flutter.createView(
                this,
                getLifecycle(),
                "pc3"
        ));
        listview.add(Flutter.createView(
                this,
                getLifecycle(),
                "pc3"
        ));
        listview.add(Flutter.createView(
                this,
                getLifecycle(),
                "pc3"
        ));
        listview.add(Flutter.createView(
                this,
                getLifecycle(),
                "pc3"
        ));
        listview.add(Flutter.createView(
                this,
                getLifecycle(),
                "pc3"
        ));

        mRecyclerView = findViewById(R.id.list);

        mRecyclerView.setHasFixedSize(true);

        mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);
        mRecyclerView.setItemViewCacheSize(20);
        mRecyclerView.setDrawingCacheEnabled(true);
        mAdapter = new MyAdapter(listview,this);
        mRecyclerView.getRecycledViewPool().setMaxRecycledViews(0, 0);
        mRecyclerView.setAdapter(mAdapter);


    }


}
