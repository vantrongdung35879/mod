.class Lcom/gamesafe/ano/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/gamesafe/ano/d;


# direct methods
.method constructor <init>(Lcom/gamesafe/ano/d;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/gamesafe/ano/f;->b:Lcom/gamesafe/ano/d;

    iput-object p2, p0, Lcom/gamesafe/ano/f;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object p1, p0, Lcom/gamesafe/ano/f;->a:Landroid/widget/TextView;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v0, p0, Lcom/gamesafe/ano/f;->b:Lcom/gamesafe/ano/d;

    invoke-static {v0}, Lcom/gamesafe/ano/d;->b(Lcom/gamesafe/ano/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s%d"

    invoke-static {p3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gamesafe/ano/f;->b:Lcom/gamesafe/ano/d;

    invoke-static {p1, p2}, Lcom/gamesafe/ano/d;->a(Lcom/gamesafe/ano/d;I)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "VyyVijOjpxcZqzio:xvko_kmjx=%y"

    invoke-static {v1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gamesafe/ano/f;->b:Lcom/gamesafe/ano/d;

    invoke-static {v2}, Lcom/gamesafe/ano/d;->c(Lcom/gamesafe/ano/d;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamesafe/ano/AnoSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
