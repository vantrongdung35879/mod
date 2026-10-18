.class public final Lcom/tencent/tme/live/a0/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/a0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/a0/a$c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/a0/a$d;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lcom/tencent/tme/live/a0/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/a0/a;Lcom/tencent/tme/live/a0/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/a0/a$c;->d:Lcom/tencent/tme/live/a0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/a0/a$c;->a:Lcom/tencent/tme/live/a0/a$d;

    invoke-static {p2}, Lcom/tencent/tme/live/a0/a$d;->a(Lcom/tencent/tme/live/a0/a$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/tencent/tme/live/a0/a;->a(Lcom/tencent/tme/live/a0/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/tencent/tme/live/a0/a$c;->b:[Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/a0/a$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/a0/a$c;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/a0/a$c;->d:Lcom/tencent/tme/live/a0/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/a0/a$c;->a:Lcom/tencent/tme/live/a0/a$d;

    .line 1
    iget-object v2, v1, Lcom/tencent/tme/live/a0/a$d;->d:Lcom/tencent/tme/live/a0/a$c;

    if-ne v2, p0, :cond_1

    .line 2
    iget-boolean v2, v1, Lcom/tencent/tme/live/a0/a$d;->c:Z

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/a0/a$c;->b:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/tencent/tme/live/a0/a$d;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/tencent/tme/live/a0/a$c;->d:Lcom/tencent/tme/live/a0/a;

    .line 4
    iget-object v1, v1, Lcom/tencent/tme/live/a0/a;->a:Ljava/io/File;

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-instance p1, Lcom/tencent/tme/live/a0/a$c$a;

    .line 6
    invoke-direct {p1, p0, v1}, Lcom/tencent/tme/live/a0/a$c$a;-><init>(Lcom/tencent/tme/live/a0/a$c;Ljava/io/OutputStream;)V

    .line 7
    monitor-exit v0

    return-object p1

    .line 8
    :catch_1
    sget-object p1, Lcom/tencent/tme/live/a0/a;->r:Ljava/io/OutputStream;

    .line 9
    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/a0/a$c;->d:Lcom/tencent/tme/live/a0/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/tencent/tme/live/a0/a;->a(Lcom/tencent/tme/live/a0/a;Lcom/tencent/tme/live/a0/a$c;Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/a0/a$c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/a0/a$c;->d:Lcom/tencent/tme/live/a0/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/tencent/tme/live/a0/a;->a(Lcom/tencent/tme/live/a0/a;Lcom/tencent/tme/live/a0/a$c;Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/a0/a$c;->d:Lcom/tencent/tme/live/a0/a;

    iget-object v1, p0, Lcom/tencent/tme/live/a0/a$c;->a:Lcom/tencent/tme/live/a0/a$d;

    .line 1
    iget-object v1, v1, Lcom/tencent/tme/live/a0/a$d;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/a0/a;->d(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/a0/a$c;->d:Lcom/tencent/tme/live/a0/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/tencent/tme/live/a0/a;->a(Lcom/tencent/tme/live/a0/a;Lcom/tencent/tme/live/a0/a$c;Z)V

    :goto_0
    return-void
.end method
