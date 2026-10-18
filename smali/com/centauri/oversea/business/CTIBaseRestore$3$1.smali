.class Lcom/centauri/oversea/business/CTIBaseRestore$3$1;
.super Ljava/lang/Object;
.source "CTIBaseRestore.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIBaseRestore$3;->callback(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/centauri/oversea/business/CTIBaseRestore$3;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/CTIBaseRestore$3;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$3$1;->this$1:Lcom/centauri/oversea/business/CTIBaseRestore$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 0

    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 0

    return-void
.end method
