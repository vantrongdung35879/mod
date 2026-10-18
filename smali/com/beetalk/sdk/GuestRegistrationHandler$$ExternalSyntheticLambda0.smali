.class public final synthetic Lcom/beetalk/sdk/GuestRegistrationHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GuestRegistrationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GuestRegistrationHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lorg/json/JSONObject;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->lambda$grantTokenForGuest$1$com-beetalk-sdk-GuestRegistrationHandler(Lorg/json/JSONObject;)V

    return-void
.end method
