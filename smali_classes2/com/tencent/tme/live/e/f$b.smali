.class public Lcom/tencent/tme/live/e/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/f;


# direct methods
.method public static synthetic $r8$lambda$3djClRbudpy-avaiXKu6QhLHtco(Lcom/tencent/tme/live/e/f$b;Lcom/tencent/tme/live/f/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/e/f$b;->a(Lcom/tencent/tme/live/f/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JKoRhYhU6-F6N7MDMCaq3qeXJyM(Lcom/tencent/tme/live/e/f$b;Lcom/tencent/tme/live/f/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/e/f$b;->a(Lcom/tencent/tme/live/f/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLM-x-Ly5B_lqQJ-HCPuHoaU8KI(Lcom/tencent/tme/live/e/f$b;Lcom/tencent/tme/live/f/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/e/f$b;->a(Lcom/tencent/tme/live/f/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/f$b;->a:Lcom/tencent/tme/live/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/tencent/tme/live/f/a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e/f$b;->a:Lcom/tencent/tme/live/e/f;

    .line 1
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e/f;->a(Lcom/tencent/tme/live/f/a;)V

    return-void
.end method

.method private synthetic a(Lcom/tencent/tme/live/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e/f$b;->a:Lcom/tencent/tme/live/e/f;

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e/f;->a(Lcom/tencent/tme/live/f/b;)V

    return-void
.end method

.method private synthetic a(Lcom/tencent/tme/live/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e/f$b;->a:Lcom/tencent/tme/live/e/f;

    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/e/f;->a(Lcom/tencent/tme/live/f/c;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/tencent/tme/live/f/a;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e/f$b;->a:Lcom/tencent/tme/live/e/f;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/tme/live/e/f$b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/e/f$b$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/e/f$b;Lcom/tencent/tme/live/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/tme/live/f/b;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e/f$b;->a:Lcom/tencent/tme/live/e/f;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/tme/live/e/f$b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/e/f$b$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/e/f$b;Lcom/tencent/tme/live/f/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/tme/live/f/c;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "mRspNotice onResponse : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tme/live/f/c;->b:Lcom/tencent/tme/live/w1/b;

    invoke-virtual {v1}, Lcom/tencent/tme/live/w1/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MinaManager"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/f$b;->a:Lcom/tencent/tme/live/e/f;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/tencent/tme/live/e/f$b$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/e/f$b$$ExternalSyntheticLambda2;-><init>(Lcom/tencent/tme/live/e/f$b;Lcom/tencent/tme/live/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
