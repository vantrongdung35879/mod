.class Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;
.super Ljava/lang/Object;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/utils/NetworkChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    invoke-direct {v0}, Lcom/tencent/mna/base/utils/NetworkChangeReceiver;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;->a:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    return-void
.end method

.method static synthetic a()Lcom/tencent/mna/base/utils/NetworkChangeReceiver;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/utils/NetworkChangeReceiver$b;->a:Lcom/tencent/mna/base/utils/NetworkChangeReceiver;

    return-object v0
.end method
