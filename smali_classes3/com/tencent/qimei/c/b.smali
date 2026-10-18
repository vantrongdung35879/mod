.class public final Lcom/tencent/qimei/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/tencent/qimei/c/g;

.field public final c:Lcom/tencent/qimei/c/a;

.field public d:Lcom/tencent/qimei/c/e;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qimei/c/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qimei/c/b;->e:Z

    if-eqz p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/tencent/qimei/c/b;->a:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/tencent/qimei/c/b;->b:Lcom/tencent/qimei/c/g;

    .line 15
    new-instance p1, Lcom/tencent/qimei/c/a;

    invoke-direct {p1, p0, p2}, Lcom/tencent/qimei/c/a;-><init>(Lcom/tencent/qimei/c/b;Lcom/tencent/qimei/c/g;)V

    iput-object p1, p0, Lcom/tencent/qimei/c/b;->c:Lcom/tencent/qimei/c/a;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
