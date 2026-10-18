.class public final Lcom/tencent/qimei/aa/d;
.super Lcom/tencent/qimei/aa/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/qimei/aa/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/aa/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/qimei/aa/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/aa/d;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/qimei/aa/d;->b:Ljava/lang/String;

    return-object p1
.end method
