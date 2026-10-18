.class public Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/danmu/DanmuSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/danmu/DanmuSeekBar;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/danmu/DanmuSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;->a:Lcom/tencent/tme/live/danmu/DanmuSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;->a:Lcom/tencent/tme/live/danmu/DanmuSeekBar;

    invoke-static {p1, p2}, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a(Lcom/tencent/tme/live/danmu/DanmuSeekBar;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "DanmuSeekBar"

    const-string v0, "onStartTrackingTouch"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    const-string p1, "live_danmu_alpha"

    invoke-static {p1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;->a:Lcom/tencent/tme/live/danmu/DanmuSeekBar;

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->e:Lcom/tencent/tme/live/danmu/DanmuSeekBar$c;

    if-eqz p1, :cond_1

    .line 4
    check-cast p1, Lcom/tencent/tme/live/danmu/DanmuSettingView$c;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/danmu/DanmuSettingView$c;->a:Lcom/tencent/tme/live/danmu/DanmuSettingView;

    .line 6
    iget-object p1, p1, Lcom/tencent/tme/live/danmu/DanmuSettingView;->e:Lcom/tencent/tme/live/danmu/DanmuSettingView$d;

    if-eqz p1, :cond_1

    .line 7
    check-cast p1, Lcom/tencent/tme/live/room/b$c;

    .line 8
    iget-object p1, p1, Lcom/tencent/tme/live/room/b$c;->a:Lcom/tencent/tme/live/room/b;

    .line 9
    iget-object p1, p1, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/danmu/DanmuView;->setAlpha(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;->a:Lcom/tencent/tme/live/danmu/DanmuSeekBar;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v0, v0, 0x64

    .line 13
    div-int/lit16 v0, v0, 0xff

    .line 14
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    const-string v1, "2"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVWordBarrageSetting"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
