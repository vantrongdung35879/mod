.class Lcom/centauri/api/UnityPayHelper$2;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->GetProductInfo(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$mapProducts:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$2;->val$channel:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/api/UnityPayHelper$2;->val$mapProducts:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$2;->val$channel:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/api/UnityPayHelper$2;->val$mapProducts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/centauri/api/UnityPayHelper;->_GetProductInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
