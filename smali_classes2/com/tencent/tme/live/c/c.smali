.class public Lcom/tencent/tme/live/c/c;
.super Lcom/tencent/tme/live/e0/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/c/c$a;
    }
.end annotation


# static fields
.field public static f:Lcom/tencent/tme/live/c/c;


# instance fields
.field public e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/e0/d;-><init>()V

    return-void
.end method

.method public static f()Lcom/tencent/tme/live/c/c;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/c/c;->f:Lcom/tencent/tme/live/c/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tme/live/c/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/c/c;->f:Lcom/tencent/tme/live/c/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/c/c;

    invoke-direct {v1}, Lcom/tencent/tme/live/c/c;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/c/c;->f:Lcom/tencent/tme/live/c/c;

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
    sget-object v0, Lcom/tencent/tme/live/c/c;->f:Lcom/tencent/tme/live/c/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/tencent/tme/live/c/c$a;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Lcom/tencent/tme/live/d/d;

    iget-object v0, p0, Lcom/tencent/tme/live/c/c;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1
    iget-boolean v2, p3, Lcom/tencent/tme/live/c/c$a;->b:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/tencent/tme/live/c/b;

    invoke-direct {v2, p0, v3, p3}, Lcom/tencent/tme/live/c/b;-><init>(Lcom/tencent/tme/live/c/c;Lcom/tencent/tme/live/d/e;Lcom/tencent/tme/live/c/c$a;)V

    move-object v3, v2

    .line 2
    :goto_0
    invoke-direct {v5, v0, v1, v3}, Lcom/tencent/tme/live/d/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/tencent/tme/live/d/c;)V

    .line 3
    :try_start_0
    new-instance v3, Lcom/tencent/tme/live/k0/b;

    invoke-direct {v3, p2}, Lcom/tencent/tme/live/k0/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/e0/d;->b()V

    invoke-static {}, Lcom/tencent/tme/live/d/g;->f()Lcom/tencent/tme/live/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/d/g;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tme/live/c/c;->f:Lcom/tencent/tme/live/c/c;

    return-void
.end method
