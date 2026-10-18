.class public final Lcom/tencent/qimei/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/qimei/h/h;

.field public b:Lcom/tencent/qimei/h/d;

.field public final c:Landroid/content/Context;

.field public d:Lcom/tencent/qimei/h/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qimei/h/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/tencent/qimei/h/e;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tencent/qimei/h/e;->a:Lcom/tencent/qimei/h/h;

    .line 5
    new-instance p1, Lcom/tencent/qimei/h/d;

    invoke-direct {p1, p0, p2}, Lcom/tencent/qimei/h/d;-><init>(Lcom/tencent/qimei/h/e;Lcom/tencent/qimei/h/h;)V

    iput-object p1, p0, Lcom/tencent/qimei/h/e;->b:Lcom/tencent/qimei/h/d;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
