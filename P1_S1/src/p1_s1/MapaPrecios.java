
package p1_s1;

import java.util.Observable;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class MapaPrecios extends Component {

    private static double precioCanarias;
    private static double precioPeninsular;
    private static double precioFrancia;
    private static double precioPortugal;
    
    private static boolean mostrarTodos;
    
    private static final double IGIC = 7; // 7%
    private static final double IVA = 21; // 21%
    private static final double IVAPORT = 23; // 23%
    private static final double IVAFRANC = 4.5; // 4.5%
    
    public MapaPrecios() {
        initComponents();
        this.setVisible(true);
        this.labelPrecioPeninsula.setText("");
        this.labelPrecioCanarias.setText("");
        this.labelPrecioFrancia.setText("");
        this.labelPrecioPortugal.setText("");
        this.precioOriginal.setText("");
        
        labelPrecioFrancia.setVisible(false);
        labelPrecioPeninsula.setVisible(false);
        labelPrecioPortugal.setVisible(false);
        labelPrecioCanarias.setVisible(false);
        
        mostrarTodos = false;
    }
    
    @Override
    public void update(Observable o, Object arg) {
       double p = (double) arg;
        
        precioCanarias = p + (p*IGIC/100.0);
        precioPeninsular = p + (p*IVA/100.0); 
        precioFrancia = p + (p*IVAFRANC/100.0);        
        precioPortugal = p + (p*IVAPORT/100.0);
        
        precioOriginal.setText(Double.toString( (double) p ) + " €");
        
        labelPrecioFrancia.setText(Double.toString(precioFrancia));
        labelPrecioPeninsula.setText(Double.toString(precioPeninsular));
        labelPrecioPortugal.setText(Double.toString(precioPeninsular));
        labelPrecioCanarias.setText(Double.toString(precioCanarias));
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        fondo = new javax.swing.JLabel();
        labelPrecioFrancia = new javax.swing.JLabel();
        labelPrecioPeninsula = new javax.swing.JLabel();
        precioOriginal = new javax.swing.JLabel();
        titulo2 = new javax.swing.JLabel();
        boton = new javax.swing.JButton();
        pinFrancia = new javax.swing.JLabel();
        pinCanarias = new javax.swing.JLabel();
        pinPortugal = new javax.swing.JLabel();
        labelPrecioPortugal = new javax.swing.JLabel();
        pinPeninsula = new javax.swing.JLabel();
        titulo = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        labelPrecioCanarias = new javax.swing.JLabel();

        fondo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        fondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/mapa.png"))); // NOI18N

        labelPrecioFrancia.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioFrancia.setText("jLabel7");
        labelPrecioFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        labelPrecioPeninsula.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioPeninsula.setForeground(new java.awt.Color(255, 255, 255));
        labelPrecioPeninsula.setText("jLabel5");

        precioOriginal.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        precioOriginal.setText("jLabel2");

        titulo2.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        titulo2.setText("Precios con IVA por países : ");

        boton.setBackground(new java.awt.Color(200, 22, 22));
        boton.setText("Ver todos los precios");
        boton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonActionPerformed(evt);
            }
        });

        pinFrancia.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinFrancia.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinFrancia.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinFrancia.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinFranciaMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinFranciaMouseExited(evt);
            }
        });

        pinCanarias.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinCanarias.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinCanarias.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinCanarias.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinCanarias.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinCanariasMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinCanariasMouseExited(evt);
            }
        });

        pinPortugal.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinPortugal.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinPortugal.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinPortugal.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinPortugalMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinPortugalMouseExited(evt);
            }
        });

        labelPrecioPortugal.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioPortugal.setText("jLabel8");
        labelPrecioPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        pinPeninsula.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        pinPeninsula.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        pinPeninsula.setIcon(new javax.swing.ImageIcon(getClass().getResource("/p1_s1/pin.png"))); // NOI18N
        pinPeninsula.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        pinPeninsula.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pinPeninsulaMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pinPeninsulaMouseExited(evt);
            }
        });

        titulo.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        titulo.setText("Precio sin IVA = ");

        labelPrecioCanarias.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        labelPrecioCanarias.setText("jLabel6");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 550, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(100, 100, 100)
                            .addComponent(titulo, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(10, 10, 10)
                            .addComponent(precioOriginal, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(20, 20, 20)
                            .addComponent(titulo2))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(30, 30, 30)
                            .addComponent(labelPrecioCanarias, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(90, 90, 90)
                            .addComponent(labelPrecioPortugal, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(220, 220, 220)
                            .addComponent(labelPrecioPeninsula, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(350, 350, 350)
                            .addComponent(pinFrancia, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(260, 260, 260)
                            .addComponent(pinPeninsula, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addComponent(fondo, javax.swing.GroupLayout.PREFERRED_SIZE, 547, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(150, 150, 150)
                            .addComponent(pinPortugal, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(40, 40, 40)
                            .addComponent(pinCanarias, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 550, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(360, 360, 360)
                            .addComponent(boton, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(340, 340, 340)
                            .addComponent(labelPrecioFrancia, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(0, 0, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 577, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(titulo, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(10, 10, 10)
                            .addComponent(precioOriginal, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(2, 2, 2)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(18, 18, 18)
                            .addComponent(titulo2))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(508, 508, 508)
                            .addComponent(labelPrecioCanarias, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(358, 358, 358)
                            .addComponent(labelPrecioPortugal, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(348, 348, 348)
                            .addComponent(labelPrecioPeninsula, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(98, 98, 98)
                            .addComponent(pinFrancia, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(268, 268, 268)
                            .addComponent(pinPeninsula, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(8, 8, 8)
                            .addComponent(fondo, javax.swing.GroupLayout.PREFERRED_SIZE, 527, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(278, 278, 278)
                            .addComponent(pinPortugal, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(408, 408, 408)
                            .addComponent(pinCanarias, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(478, 478, 478)
                            .addComponent(boton, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(188, 188, 188)
                            .addComponent(labelPrecioFrancia, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(0, 0, Short.MAX_VALUE)))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void botonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonActionPerformed
        // TODO add your handling code here:
        if(mostrarTodos){
            labelPrecioFrancia.setVisible(false);
            labelPrecioPeninsula.setVisible(false);
            labelPrecioPortugal.setVisible(false);
            labelPrecioCanarias.setVisible(false);
            mostrarTodos = false;
            boton.setBackground(new java.awt.Color(200, 22, 22));
        }
        else{
            labelPrecioFrancia.setVisible(true);
            labelPrecioPeninsula.setVisible(true);
            labelPrecioPortugal.setVisible(true);
            labelPrecioCanarias.setVisible(true);
            mostrarTodos=true;
            boton.setBackground(new java.awt.Color(57, 178, 84));
        }
    }//GEN-LAST:event_botonActionPerformed

    private void pinFranciaMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinFranciaMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioFrancia.setVisible(true);
            pinFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        }

    }//GEN-LAST:event_pinFranciaMouseEntered

    private void pinFranciaMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinFranciaMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioFrancia.setVisible(false);
            pinFrancia.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        }

    }//GEN-LAST:event_pinFranciaMouseExited

    private void pinCanariasMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinCanariasMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinCanarias.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
            labelPrecioCanarias.setVisible(true);
        }

    }//GEN-LAST:event_pinCanariasMouseEntered

    private void pinCanariasMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinCanariasMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinCanarias.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
            labelPrecioCanarias.setVisible(false);
        }

    }//GEN-LAST:event_pinCanariasMouseExited

    private void pinPortugalMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPortugalMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
            labelPrecioPortugal.setVisible(true);
        }

    }//GEN-LAST:event_pinPortugalMouseEntered

    private void pinPortugalMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPortugalMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            pinPortugal.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
            labelPrecioPortugal.setVisible(false);
        }

    }//GEN-LAST:event_pinPortugalMouseExited

    private void pinPeninsulaMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPeninsulaMouseEntered
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioPeninsula.setVisible(true);
            pinPeninsula.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        }

    }//GEN-LAST:event_pinPeninsulaMouseEntered

    private void pinPeninsulaMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pinPeninsulaMouseExited
        // TODO add your handling code here:
        if(!mostrarTodos){
            labelPrecioPeninsula.setVisible(false);
            pinPeninsula.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        }

    }//GEN-LAST:event_pinPeninsulaMouseExited


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton boton;
    private javax.swing.JLabel fondo;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JLabel labelPrecioCanarias;
    private javax.swing.JLabel labelPrecioFrancia;
    private javax.swing.JLabel labelPrecioPeninsula;
    private javax.swing.JLabel labelPrecioPortugal;
    private javax.swing.JLabel pinCanarias;
    private javax.swing.JLabel pinFrancia;
    private javax.swing.JLabel pinPeninsula;
    private javax.swing.JLabel pinPortugal;
    private javax.swing.JLabel precioOriginal;
    private javax.swing.JLabel titulo;
    private javax.swing.JLabel titulo2;
    // End of variables declaration//GEN-END:variables

    @Override
    public void operacion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
