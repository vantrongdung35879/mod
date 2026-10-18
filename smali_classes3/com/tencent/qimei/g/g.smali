.class public final Lcom/tencent/qimei/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/tencent/qimei/g/c;

.field public final c:Lcom/tencent/qimei/g/f;

.field public final d:Lcom/tencent/qimei/g/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qimei/g/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/qimei/g/g;->a:Landroid/content/Context;

    .line 5
    iput-object v0, p0, Lcom/tencent/qimei/g/g;->d:Lcom/tencent/qimei/g/e;

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/tencent/qimei/g/g;->a:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/tencent/qimei/g/g;->d:Lcom/tencent/qimei/g/e;

    .line 17
    new-instance p1, Lcom/tencent/qimei/g/f;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/g/f;-><init>(Lcom/tencent/qimei/g/g;)V

    iput-object p1, p0, Lcom/tencent/qimei/g/g;->c:Lcom/tencent/qimei/g/f;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LXOP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V

    return-void
.end method
