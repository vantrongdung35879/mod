.class Lcom/centauri/api/UnityPayHelper$3;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bizType:Ljava/lang/String;

.field final synthetic val$req:Ljava/lang/String;

.field final synthetic val$reqType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$3;->val$reqType:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/api/UnityPayHelper$3;->val$bizType:Ljava/lang/String;

    iput-object p3, p0, Lcom/centauri/api/UnityPayHelper$3;->val$req:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$3;->val$reqType:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/api/UnityPayHelper$3;->val$bizType:Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/api/UnityPayHelper$3;->val$req:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/centauri/api/UnityPayHelper;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
