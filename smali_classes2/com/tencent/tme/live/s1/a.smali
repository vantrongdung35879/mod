.class public Lcom/tencent/tme/live/s1/a;
.super Lcom/tencent/tme/live/d/e;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/tme/live/room/c;


# direct methods
.method public static synthetic $r8$lambda$hf8v6YZgERfz11rhYFAxa-ypLJw(Lcom/tencent/tme/live/s1/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/s1/a;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/room/c;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s1/a;->c:Lcom/tencent/tme/live/room/c;

    iput-wide p2, p0, Lcom/tencent/tme/live/s1/a;->a:J

    iput-object p4, p0, Lcom/tencent/tme/live/s1/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/tme/live/d/e;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/s1/a;->c:Lcom/tencent/tme/live/room/c;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/tencent/tme/live/s1/a;->c:Lcom/tencent/tme/live/room/c;

    .line 3
    iget-object p2, p2, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 4
    new-instance p3, Lcom/tencent/tme/live/s1/a$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/tencent/tme/live/s1/a$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/s1/a;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p2, p0, Lcom/tencent/tme/live/s1/a;->c:Lcom/tencent/tme/live/room/c;

    iget-wide v0, p0, Lcom/tencent/tme/live/s1/a;->a:J

    iget-object p3, p0, Lcom/tencent/tme/live/s1/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 5
    :goto_0
    invoke-virtual {p2, v0, v1, p3, p1}, Lcom/tencent/tme/live/room/c;->a(JLjava/lang/String;I)V

    return-void
.end method
