.class Lcom/centauri/api/UnityPayHelper$12;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->centauriSdkGetGrnProductInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$req:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$12;->val$req:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$12;->val$req:Ljava/lang/String;

    invoke-static {v0}, Lcom/centauri/api/UnityPayHelper;->_GetProductInfoForGarena(Ljava/lang/String;)V

    return-void
.end method
