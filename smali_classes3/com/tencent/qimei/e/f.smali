.class public final Lcom/tencent/qimei/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/e/g;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/e/f;->a:Lcom/tencent/qimei/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string p1, "HSDID did service binded"

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/qimei/e/f;->a:Lcom/tencent/qimei/e/g;

    sget v0, Lcom/tencent/qimei/e/b;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Lcom/tencent/qimei/e/c;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/tencent/qimei/e/c;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/qimei/e/a;

    invoke-direct {v0, p2}, Lcom/tencent/qimei/e/a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 5
    :goto_0
    iput-object p2, p1, Lcom/tencent/qimei/e/g;->c:Lcom/tencent/qimei/e/c;

    .line 6
    iget-object p1, p0, Lcom/tencent/qimei/e/f;->a:Lcom/tencent/qimei/e/g;

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/tencent/qimei/e/g;->a(Z)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/e/f;->a:Lcom/tencent/qimei/e/g;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/qimei/e/g;->a(Z)V

    return-void
.end method
