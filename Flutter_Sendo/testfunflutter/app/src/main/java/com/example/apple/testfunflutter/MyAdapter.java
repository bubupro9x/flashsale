package com.example.apple.testfunflutter;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

import io.flutter.facade.Flutter;

public class MyAdapter extends RecyclerView.Adapter<MyAdapter.MyViewHolder> {
    private ArrayList<View> mDataset;
    private AppCompatActivity mActivity;

    public static class MyViewHolder extends RecyclerView.ViewHolder {
        public MyViewHolder(View v) {
            super(v);
        }
    }

    public MyAdapter(ArrayList<View> myDataset, AppCompatActivity activity) {
        mDataset = myDataset;
        mActivity = activity;
    }
    @Override
    public MyAdapter.MyViewHolder onCreateViewHolder(ViewGroup parent,
                                                     int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View view = inflater.inflate(R.layout.test, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {

        ((FrameLayout) holder.itemView).addView(mDataset.get(position));
      //  mDataset.get(position).setLayoutParams(new ViewGroup.LayoutParams(1100, 600));

    }

    @Override
    public int getItemCount() {
        return mDataset.size();
    }

}