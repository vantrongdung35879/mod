.class Lcom/tencent/mna/p0$a;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/p0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/p0$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/p0$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/mna/p0$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mna/p0$a;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/tencent/mna/p0$a;->e:J

    iput p7, p0, Lcom/tencent/mna/p0$a;->f:I

    iput-object p8, p0, Lcom/tencent/mna/p0$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/p0$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/p0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2
    iget-object v1, p0, Lcom/tencent/mna/p0$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mna/p0$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mna/p0$a;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/tencent/mna/p0$a;->e:J

    iget v7, p0, Lcom/tencent/mna/p0$a;->f:I

    iget-object v8, p0, Lcom/tencent/mna/p0$a;->g:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/tencent/mna/p0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
