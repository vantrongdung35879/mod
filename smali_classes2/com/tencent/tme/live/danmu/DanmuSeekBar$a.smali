.class public Lcom/tencent/tme/live/danmu/DanmuSeekBar$a;
.super Lcom/tencent/tme/live/l0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tencent/tme/live/danmu/DanmuSeekBar;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/danmu/DanmuSeekBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$a;->b:Lcom/tencent/tme/live/danmu/DanmuSeekBar;

    iput p2, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$a;->a:I

    invoke-direct {p0}, Lcom/tencent/tme/live/l0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$a;->b:Lcom/tencent/tme/live/danmu/DanmuSeekBar;

    new-instance p2, Lcom/tencent/tme/live/danmu/DanmuSeekBar$a$a;

    invoke-direct {p2, p0, p3}, Lcom/tencent/tme/live/danmu/DanmuSeekBar$a$a;-><init>(Lcom/tencent/tme/live/danmu/DanmuSeekBar$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
