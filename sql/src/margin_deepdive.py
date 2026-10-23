import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def analyze_margins(data_path):
    # Load dataset
    df = pd.read_csv(data_path)
    
    # Calculate Profit and Margin %
    df['profit'] = df['sales'] - df['cost']
    df['margin_pct'] = (df['profit'] / df['sales']) * 100
    
    # Segment by Discount Brackets
    bins = [-0.01, 0.0, 0.10, 0.20, 0.30, 1.0]
    labels = ['No Discount', '1-10%', '11-20%', '21-30%', '30%+']
    df['discount_bracket'] = pd.cut(df['discount'], bins=bins, labels=labels)
    
    summary = df.groupby('discount_bracket')[['sales', 'profit']].sum().reset_index()
    print("Profit Summary by Discount Bracket:")
    print(summary)
    
    return summary

if __name__ == "__main__":
    print("Script executed successfully. Ready to process transaction logs.")
