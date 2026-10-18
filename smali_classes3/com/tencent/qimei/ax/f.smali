.class public final Lcom/tencent/qimei/ax/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/tencent/qimei/ax/f;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/qimei/ax/f;

    invoke-direct {v0}, Lcom/tencent/qimei/ax/f;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ax/f;->b:Lcom/tencent/qimei/ax/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ax/f;->a:Ljava/util/HashMap;

    return-void
.end method
