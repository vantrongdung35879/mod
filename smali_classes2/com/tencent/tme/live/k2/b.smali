.class public Lcom/tencent/tme/live/k2/b;
.super Ljava/lang/Object;


# static fields
.field public static b:Lcom/tencent/tme/live/k2/b;

.field public static c:I


# instance fields
.field public a:Lcom/tencent/tme/live/l2/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    return-void
.end method

.method public static a()Lcom/tencent/tme/live/k2/b;
    .locals 2

    sget v0, Lcom/tencent/tme/live/b/a;->a:I

    sput v0, Lcom/tencent/tme/live/k2/b;->c:I

    sget-object v0, Lcom/tencent/tme/live/k2/b;->b:Lcom/tencent/tme/live/k2/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tme/live/k2/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/k2/b;->b:Lcom/tencent/tme/live/k2/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/k2/b;

    invoke-direct {v1}, Lcom/tencent/tme/live/k2/b;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/k2/b;->b:Lcom/tencent/tme/live/k2/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/tme/live/k2/b;->b:Lcom/tencent/tme/live/k2/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/Window;Lcom/tencent/tme/live/l2/c;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    if-nez v0, :cond_b

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    sget v0, Lcom/tencent/tme/live/k2/b;->c:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/tencent/tme/live/n2/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    goto/16 :goto_3

    .line 2
    :cond_1
    sget-object v0, Lcom/tencent/tme/live/m2/a;->a:Lcom/tencent/tme/live/m2/a;

    if-nez v0, :cond_3

    const-class v0, Lcom/tencent/tme/live/m2/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/m2/a;->a:Lcom/tencent/tme/live/m2/a;

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/tme/live/m2/a;

    invoke-direct {v1}, Lcom/tencent/tme/live/m2/a;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/m2/a;->a:Lcom/tencent/tme/live/m2/a;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    sget-object v0, Lcom/tencent/tme/live/m2/a;->a:Lcom/tencent/tme/live/m2/a;

    .line 3
    sget v1, Lcom/tencent/tme/live/k2/b;->c:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/tencent/tme/live/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v0, Lcom/tencent/tme/live/n2/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    goto/16 :goto_3

    .line 6
    :cond_4
    invoke-static {}, Lcom/tencent/tme/live/m2/c;->a()Lcom/tencent/tme/live/m2/c;

    move-result-object v0

    const-string v1, "ro.miui.ui.version.name"

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/m2/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    new-instance v0, Lcom/tencent/tme/live/n2/c;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    goto :goto_3

    .line 9
    :cond_5
    invoke-static {}, Lcom/tencent/tme/live/m2/c;->a()Lcom/tencent/tme/live/m2/c;

    move-result-object v0

    const-string v1, "ro.vivo.os.name"

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/m2/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    new-instance v0, Lcom/tencent/tme/live/n2/h;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    goto :goto_3

    .line 12
    :cond_6
    sget-object v0, Lcom/tencent/tme/live/b/a;->c:Ljava/lang/String;

    const-string v1, "oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    new-instance v0, Lcom/tencent/tme/live/n2/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    goto :goto_3

    .line 14
    :cond_7
    sget-object v0, Lcom/tencent/tme/live/b/a;->c:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    new-instance v0, Lcom/tencent/tme/live/n2/g;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/g;-><init>()V

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/tencent/tme/live/n2/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/a;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v0, Lcom/tencent/tme/live/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    new-instance v0, Lcom/tencent/tme/live/n2/e;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/e;-><init>()V

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/tencent/tme/live/n2/f;

    invoke-direct {v0}, Lcom/tencent/tme/live/n2/f;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    .line 18
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/tencent/tme/live/k2/b;->a:Lcom/tencent/tme/live/l2/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/l2/a;->a(Landroid/view/Window;Lcom/tencent/tme/live/l2/c;)V

    :cond_c
    return-void
.end method
