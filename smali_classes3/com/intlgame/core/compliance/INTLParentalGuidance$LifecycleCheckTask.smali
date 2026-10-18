.class Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;
.super Ljava/lang/Object;
.source "INTLParentalGuidance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/core/compliance/INTLParentalGuidance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleCheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/core/compliance/INTLParentalGuidance;


# direct methods
.method constructor <init>(Lcom/intlgame/core/compliance/INTLParentalGuidance;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;->this$0:Lcom/intlgame/core/compliance/INTLParentalGuidance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;->this$0:Lcom/intlgame/core/compliance/INTLParentalGuidance;

    invoke-static {v0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->access$000(Lcom/intlgame/core/compliance/INTLParentalGuidance;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;->this$0:Lcom/intlgame/core/compliance/INTLParentalGuidance;

    invoke-static {v0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->access$100(Lcom/intlgame/core/compliance/INTLParentalGuidance;)V

    .line 154
    iget-object v0, p0, Lcom/intlgame/core/compliance/INTLParentalGuidance$LifecycleCheckTask;->this$0:Lcom/intlgame/core/compliance/INTLParentalGuidance;

    invoke-static {v0}, Lcom/intlgame/core/compliance/INTLParentalGuidance;->access$200(Lcom/intlgame/core/compliance/INTLParentalGuidance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stacktrace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
