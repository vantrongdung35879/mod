.class public Lcom/tencent/tme/live/room/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/room/e$c;,
        Lcom/tencent/tme/live/room/e$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/content/Context;

.field public d:Landroid/media/AudioManager;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroid/view/Window;

.field public i:Landroid/view/WindowManager$LayoutParams;

.field public final j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public final k:Landroid/widget/ProgressBar;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/view/View;

.field public n:Lcom/tencent/tme/live/room/e$b;

.field public o:Landroid/view/GestureDetector;

.field public final p:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/room/e;->e:I

    iput v0, p0, Lcom/tencent/tme/live/room/e;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/tme/live/room/e;->g:F

    iput-object p2, p0, Lcom/tencent/tme/live/room/e;->a:Landroid/app/Activity;

    iput-object p1, p0, Lcom/tencent/tme/live/room/e;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/tencent/tme/live/room/e;->p:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/tme/live/room/e;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/tencent/tme/live/biz/R$layout;->tme_player_system_setting_layout:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->setting_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/room/e;->m:Landroid/view/View;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->iv_center:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p2, p0, Lcom/tencent/tme/live/room/e;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->pb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/tencent/tme/live/room/e;->k:Landroid/widget/ProgressBar;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/room/e;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/e;->a()V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/room/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/room/e;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/e;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/tme/live/room/e;->n:Lcom/tencent/tme/live/room/e$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/room/e;->m:Landroid/view/View;

    iget-object p0, p0, Lcom/tencent/tme/live/room/e;->n:Lcom/tencent/tme/live/room/e$b;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/room/e;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/tme/live/room/e;->d:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/room/e;->e:I

    iget-object v0, p0, Lcom/tencent/tme/live/room/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/room/e;->h:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/room/e;->i:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/tencent/tme/live/room/e;->g:F

    new-instance v0, Lcom/tencent/tme/live/room/e$b;

    .line 2
    invoke-direct {v0, p0}, Lcom/tencent/tme/live/room/e$b;-><init>(Lcom/tencent/tme/live/room/e;)V

    .line 3
    iput-object v0, p0, Lcom/tencent/tme/live/room/e;->n:Lcom/tencent/tme/live/room/e$b;

    new-instance v0, Lcom/tencent/tme/live/room/e$c;

    .line 4
    invoke-direct {v0, p0}, Lcom/tencent/tme/live/room/e$c;-><init>(Lcom/tencent/tme/live/room/e;)V

    .line 5
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/tencent/tme/live/room/e;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/tencent/tme/live/room/e;->o:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/e;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/tencent/tme/live/room/e$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/e$a;-><init>(Lcom/tencent/tme/live/room/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
