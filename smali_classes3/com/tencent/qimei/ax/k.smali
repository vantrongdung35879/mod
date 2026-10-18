.class public final Lcom/tencent/qimei/ax/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ax/l;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ax/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ax/k;->a:Lcom/tencent/qimei/ax/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/ax/k;->a:Lcom/tencent/qimei/ax/l;

    invoke-static {v0}, Lcom/tencent/qimei/ax/l;->a(Lcom/tencent/qimei/ax/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
