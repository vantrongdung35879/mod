.class public final Lcom/tencent/qimei/l/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/qimei/l/g;

.field public final b:Lcom/tencent/qimei/l/d;

.field public final c:Landroid/content/Context;

.field public volatile d:Z

.field public e:Lcom/tencent/qimei/l/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qimei/l/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/qimei/l/e;->a:Lcom/tencent/qimei/l/g;

    .line 4
    iput-object v0, p0, Lcom/tencent/qimei/l/e;->c:Landroid/content/Context;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/qimei/l/e;->d:Z

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/tencent/qimei/l/e;->c:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/tencent/qimei/l/e;->a:Lcom/tencent/qimei/l/g;

    .line 34
    new-instance p1, Lcom/tencent/qimei/l/d;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/l/d;-><init>(Lcom/tencent/qimei/l/e;)V

    iput-object p1, p0, Lcom/tencent/qimei/l/e;->b:Lcom/tencent/qimei/l/d;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
