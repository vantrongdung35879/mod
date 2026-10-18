.class public Lcom/tencent/tme/live/q0/a$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/q0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/tme/live/q0/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/q0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/q0/a$a;->b:Lcom/tencent/tme/live/q0/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/s2/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/q0/a$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/q0/a$a;->b:Lcom/tencent/tme/live/q0/a;

    .line 1
    iget v1, v0, Lcom/tencent/tme/live/q0/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tme/live/q0/a;->d:I

    .line 2
    iget v0, v0, Lcom/tencent/tme/live/q0/a;->c:I

    mul-int v1, v1, v0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MatchUserReport:duration:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    const v0, 0x2932e00

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/q0/a$a;->b:Lcom/tencent/tme/live/q0/a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/q0/a;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/q0/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/tencent/tme/live/q0/a$a;->a:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/q0/a$a;->b:Lcom/tencent/tme/live/q0/a;

    .line 6
    iget-object v2, v1, Lcom/tencent/tme/live/q0/a;->e:Ljava/lang/String;

    .line 8
    iget v1, v1, Lcom/tencent/tme/live/q0/a;->c:I

    .line 9
    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tme/live/q0/a$a;->b:Lcom/tencent/tme/live/q0/a;

    .line 10
    iget v3, v3, Lcom/tencent/tme/live/q0/a;->d:I

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tme/live/q0/a$a;->a:Ljava/lang/String;

    filled-new-array {v2, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "MatchUserDuration"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
